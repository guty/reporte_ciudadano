# frozen_string_literal: true

class ComplaintsController < AuthorizationsController
  before_action :set_complaint, only: %i[show edit update destroy]
  before_action :fetch_categories, only: %i[new create edit update]

  def index; end

  def show; end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = current_user.complaints.new(complaint_params)
    @complaint.created!

    if @complaint.save
      SendComplaintNotification.initialize(@complaint).perform
      redirect_to complaint_url(@complaint), notice: "Ha sido generado y enviado exitosamente tu reporte."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @complaint.update(complaint_params)

    redirect_to complaint_url(@complaint), notice: "Ha sido aplicada la transacción de forma exitosa"
  end

  def destroy; end

  private

  def set_complaint
    @complaint = complaint_scope.find_by(id: params[:id])

    redirect_to dashboards_url, alert: "No fue posible localizar el reporte" unless @complaint
  end

  def complaint_scope
    return current_user.complaints if current_user.citizen?

    if current_user.director? || current_user.employee?
      return Complaint.where(category_id: current_user.dependency.categories.pluck(:id))
    end

    Complaint
  end

  def fetch_categories
    @categories = Category.all
  end

  def complaint_params
    params.require(:complaint).permit(:user_id, :category_id, :subject, :description, :address, :neighbourhood, :town,
                                      :latitude, :longitude, :response, images: [], evidences: [])
  end
end
