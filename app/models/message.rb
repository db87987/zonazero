class Message < ActiveRecord::Base
  attr_accessible :name, :company, :position, :pre, :tel, :mail, :comment, :option_ids
  
  has_many :messageoptions
  has_many :options, through: :messageoptions
  
  
end