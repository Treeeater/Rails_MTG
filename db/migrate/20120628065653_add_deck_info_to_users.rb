class AddDeckInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :deck_info, :string

  end
end
