json.array!(@tbl_jobs) do |tbl_job|
  json.extract! tbl_job, :id, :url, :html
  json.url tbl_job_url(tbl_job, format: :json)
end
