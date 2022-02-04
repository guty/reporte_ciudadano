# frozen_string_literal: true

module Complaints
  class SearchController < AuthorizationsController
    def index
      @complaint = current_user.complaints.find_by(id: params[:id])

      if @complaint
        redirect_to complaint_path(@complaint)
      else
        redirect_to dashboards_url, alert: "No se ha encontrado el reporte que estás buscando"
      end
    end
  end
end
