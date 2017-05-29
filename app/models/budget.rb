class Budget < ApplicationRecord
  before_save :calculate_tax

  def calculate_tax
    if self.days_until_due_date % 10 === 0
      percent_tax = 0.0165 * (self.days_until_due_date / 10)
    else
      percent_tax = 0.0165 * ((self.days_until_due_date / 10) + 1)
    end
    self.tax_value = self.duplicate_value * percent_tax
    self.value_to_pay = self.duplicate_value - self.tax_value
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :requester_email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :company_name, presence: true
  validates :monthly_revenue, presence: true
  validates :duplicate_value, presence: true
  validates :days_until_due_date, presence: true
end
