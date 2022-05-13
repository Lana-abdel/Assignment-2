json.extract! survey, :id, :answer_1, :answer_2, :answer_3, :answer_4, :created_at, :updated_at
json.url survey_url(survey, format: :json)
