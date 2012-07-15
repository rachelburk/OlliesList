class ChangeSoldDefault < ActiveRecord::Migration
  def change
  	remove_column :items, :sold, :boolean
    add_column :items, :sold, :boolean, default: false
  end
end
