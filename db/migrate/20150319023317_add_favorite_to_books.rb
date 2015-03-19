class AddFavoriteToBooks < ActiveRecord::Migration
  def change
    add_column :books, :favorite, :integer, default: 0
    change_column :books, :rating, :integer, default: 0
  end
end
