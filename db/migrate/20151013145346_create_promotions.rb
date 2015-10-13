class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.datetime :start_period
      t.datetime :end_period

      t.timestamps null: false
    end
  end
end
