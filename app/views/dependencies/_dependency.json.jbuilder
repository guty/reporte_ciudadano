# frozen_string_literal: true

json.extract! dependency, :id, :name, :active, :created_at, :updated_at
json.url dependency_url(dependency, format: :json)
