class ChangeAmountFromDecimalToFloat < ActiveRecord::Migration
  def up
    change_column(:techno_users, :amount, :float)
  end

  def down
    change_column(:techno_users, :amount, :decimal)
  end
end
