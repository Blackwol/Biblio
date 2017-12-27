class AddStatusToBook < ActiveRecord::Migration
  def change
    add_column :books, :status, :integer, default: 0
  end
end
