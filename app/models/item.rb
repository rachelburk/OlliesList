class Item < ActiveRecord::Base
  attr_accessible :dscrp, :name, :price, :sold

  belongs_to :user

  default_scope order: 'items.created_at DESC'
end
