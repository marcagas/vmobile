class CreateHomes < ActiveRecord::Migration
  def change
    create_table :home do |t|

      t.timestamps
    end
  end
end
