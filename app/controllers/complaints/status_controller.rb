# frozen_string_literal: true

module Complaints
  class StatusController < AuthorizationsController
    before_action :set_complaint

    def update
      evento = params[:evento].presence || params[:event]

      if @complaint.send(evento) && @complaint.update(complaint_params)
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
