json.extract! record, :id, :description, :ordernumber, :date, :begin_time, :end_time, :user_id, :workfile_id, :created_at, :updated_at
json.url record_url(record, format: :json)
