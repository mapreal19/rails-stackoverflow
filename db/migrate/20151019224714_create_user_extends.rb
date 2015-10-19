class CreateUserExtends < ActiveRecord::Migration
  def change
    create_table :user_extends do |t|
      t.references :user, index: true, foreign_key: true
      t.string :extra_field_1

      t.timestamps null: false
    end
  end
end
