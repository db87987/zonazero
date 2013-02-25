class Option < ActiveRecord::Base
  attr_accessible :title, :category_id
  belongs_to :category
  has_many :messageoptions
  has_many :messages, through: :messageoptions
end
