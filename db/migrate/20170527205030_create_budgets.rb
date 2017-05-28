class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :requester_name
      t.string :requester_email
      t.string :company_name
      t.decimal :monthly_revenue
      t.decimal :duplicate_value
      t.integer :days_until_due_date
      t.decimal :tax_value
      t.decimal :value_to_pay

      t.timestamps
    end
  end
end
