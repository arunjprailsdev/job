json.extract! joblist, :id, :PostDate, :JobTitle, :Qualification, :LastDate, :MoreInfo, :created_at, :updated_at
json.url joblist_url(joblist, format: :json)
