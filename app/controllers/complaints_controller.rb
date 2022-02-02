# frozen_string_literal: true

class ComplaintsController < AuthorizationsController
  before_action :set_complaint, only: %i[edit update destroy]
  before_action :fetch_categories, only: %i[new create edit update]

  def index
    @complaint = current_user.complaints.find_by(id: params[:id])
    if @complaint
      redirect_to complaint_url(@complaint)
    else
      redirect_to dashboards_url, alert: "No se ha encontrado el reporte que estás buscando"
    end
  end

  def show
    @complaint = current_user.complaints.find(params[:id])

    redirect_to dashboards_url, alert: 'No se ha encontrado el reporte que estás buscando' unless @complaint
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = current_user.complaints.new(complaint_params)
    @complaint.created!

    if @complaint.save
      redirect_to complaint_url(@complaint), notice: "Ha sido generado y enviado exitosamente tu reporte."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_complaint
    @complaint = Complaint.find(params[:id])
  end

  def fetch_categories
    @categories = Category.all
  end

  def complaint_params
    params.require(:complaint).permit(:user_id, :category_id, :subject, :description, :address, :neighbourhood, :town,
                                      :latitude, :longitude)
  end
end
