class Budget < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :requester_email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :company_name, presence: true
  validates :monthly_revenue, presence: true
  validates :duplicate_value, presence: true
  validates :days_until_due_date, presence: true
end
