class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :dscrp
      t.integer :price
      t.boolean :sold

      t.timestamps
    end
  end
end
