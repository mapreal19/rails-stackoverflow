class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :items_users, id: false do |t|
      t.belongs_to :item, index: true
      t.belongs_to :user, index: true
    end
  end
end
