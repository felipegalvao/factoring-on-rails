require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  def setup
    @budget = Budget.new(
      requester_name: "Test Requester Name",
      requester_email: "requester@email.com",
      company_name: "Test Company Name",
      monthly_revenue: 20000,
      duplicate_value: 2000,
      days_until_due_date: 25
    )
  end

  test "should be valid" do
    assert @budget.valid?
  end

  test "requester email should be present" do
    @budget.requester_email = ""
    assert_not @budget.valid?
  end

  test "requester email should be valid" do
    @budget.requester_email = "invalid@"
    assert_not @budget.valid?
  end

  test "company name should be present" do
    @budget.company_name = ""
    assert_not @budget.valid?
  end

  test "monthly revenue should be present" do
    @budget.monthly_revenue = nil
    assert_not @budget.valid?
  end

  test "duplicate value should be present" do
    @budget.duplicate_value = nil
    assert_not @budget.valid?
  end

  test "duplicate value should be greater than or equal to 500" do
    @budget.duplicate_value = 300
    assert_not @budget.valid?
  end

  test "days until due date should be present" do
    @budget.days_until_due_date = nil
    assert_not @budget.valid?
  end

  test "days until due date should be greater than or equal to 10" do
    @budget.days_until_due_date = 7
    assert_not @budget.valid?
  end

  test "tax value for given setup" do
    @budget.save
    percent_tax = 0.0165 * ((@budget.reload.days_until_due_date / 10) + 1)
    tax_value = percent_tax * @budget.duplicate_value
    assert_equal tax_value, @budget.tax_value
  end

end
