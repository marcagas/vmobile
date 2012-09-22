class CreateTechnoUsers < ActiveRecord::Migration
  def change
    create_table :techno_users do |t|
      t.string :name
      t.string :user_id
      t.decimal :amount
      t.datetime :date_sold
      t.timestamps
    end
  end
end
