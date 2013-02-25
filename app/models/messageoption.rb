class Messageoption < ActiveRecord::Base
  belongs_to :option
  belongs_to :message
end
