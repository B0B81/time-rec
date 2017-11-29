json.extract! workfile, :id, :title, :description, :date, :user_id, :created_at, :updated_at
json.url workfile_url(workfile, format: :json)
