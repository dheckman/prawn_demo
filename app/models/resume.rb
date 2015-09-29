class Resume < ActiveRecord::Base
  
  validates :title, presence: true
  validates :label, presence: true
end
