json.extract! loan, :id, :user_id, :book_id, :date, :return, :created_at, :updated_at
json.url loan_url(loan, format: :json)
