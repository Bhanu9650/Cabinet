class Doc < ApplicationRecord
  belongs_to :user

  def content_word_count
  	content&.split(' ')&.size.to_i
  end
  def time_taken
  	
  end
end
