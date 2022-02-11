# frozen_string_literal: true

module Complaints
  class StatusController < AuthorizationsController
    before_action :set_complaint

    def update
      event = params[:form_event].presence || params[:event]

      if @complaint.send(event) && @complaint.update(complaint_params)
        SendComplaintNotification.new(@complaint).call
        redirect_to complaint_path(@complaint), notice: 'Acción realizada satisfactoriamente'
      else
        redirect_to complaint_path(@complaint), alert: 'No fue posible realizar la acción'
      end
    end

    private

    def complaint_params
      params.permit(:response, evidences: [])
    end

    def set_complaint
      @complaint = complaint_scope.find_by(id: params[:complaint_id])

      redirect_to dashboards_url, alert: 'No fue posible localizar el reporte' unless @complaint
    end

    def complaint_scope
      return current_user.complaints if current_user.citizen?

      if current_user.director? || current_user.employee?
        return Complaint.where(category_id: current_user.dependency.categories.pluck(:id))
      end

      Complaint
    end
  end
end
