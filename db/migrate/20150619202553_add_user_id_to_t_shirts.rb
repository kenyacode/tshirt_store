class AddUserIdToTShirts < ActiveRecord::Migration
  def change
    add_column :t_shirts, :user_id, :integer
  end
end
