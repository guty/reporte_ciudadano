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
    @complaint = Complaint.new(complaint_params)
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