class AddSoldOrBoughtToItem < ActiveRecord::Migration
  def change
  	add_column :items, :status, :string, default: "selling"
  end
end
