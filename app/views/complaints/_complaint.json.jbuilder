# frozen_string_literal: true

json.extract! complaint, :id, :subject, :description, :address, :street, :neighbourhood, :town, :latitude, :longitude,
              :user_id, :category_id, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
