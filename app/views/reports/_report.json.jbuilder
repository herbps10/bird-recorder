json.extract! report, :id, :recording, :uptime, :device_id, :created_at, :updated_at
json.url report_url(report, format: :json)