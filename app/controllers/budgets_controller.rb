class BudgetsController < ApplicationController
  def index
  end

  def new
    @budget = Budget.new
  end

  def show
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      redirect_to @budget
    else
      render "new"
    end
  end

  private

    def budget_params
      params.require(:budget).permit(:requester_name, :requester_email,
                                     :company_name, :monthly_revenue,
                                     :duplicate_value, :days_until_due_date)
    end
end
