class BaintodoItem < ApplicationRecord
  belongs_to :baintodo_list
  
  def completed?
   !completed_at.blank?
  end
end
