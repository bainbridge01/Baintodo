class BaintodoList < ApplicationRecord
  has_many :baintodo_items, :dependent => :destroy
end
