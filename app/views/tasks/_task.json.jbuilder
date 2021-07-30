json.extract! task, :id, :taskName, :description, :startDate, :endDate, :business_id, :created_at, :updated_at
json.url task_url(task, format: :json)
