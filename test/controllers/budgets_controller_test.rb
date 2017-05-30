require 'test_helper'

class BudgetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get budgets_new_url
    assert_response :success
  end

  test "should get show" do
    @budget = budgets(:one)
    get budget_path(@budget)
    assert_response :success
  end

  test "post for budget creation url should redirect to Budget" do
    post budgets_create_url, params: { budget: {
      requester_name: "Requester Name",
      requester_email: "requester@email.com",
      company_name: "Company Name",
      monthly_revenue: 15000,
      duplicate_value: 3000,
      days_until_due_date: 10
    }}
    assert_redirected_to budget_path(Budget.last)
  end

end
