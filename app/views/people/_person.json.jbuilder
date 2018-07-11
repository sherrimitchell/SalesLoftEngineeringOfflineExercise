json.extract! person, :id, :name, :email, :job_title, :created_at, :updated_at
json.url person_url(person, format: :json)
