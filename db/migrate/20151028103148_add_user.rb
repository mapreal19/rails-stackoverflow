class AddUser < ActiveRecord::Migration
  def change
    # Actually nothing...
  end

  def data
    User.create!(name: 'Mario')
  end

  def rollback
    User.find_by(name: 'Mario').destroy
  end
end
