class Program < ActiveRecord::Base
  has_many :parts
  validates :title, presence: true
end
