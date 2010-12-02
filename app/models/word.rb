class Word < ActiveRecord::Base
  
  default_scope order('name ASC')
  
  scope :search, lambda { |query|
    query.blank? ? {} : where('name LIKE ?', "%#{query}%")
  }
  
  scope :starts_with, lambda { |letter|
    letter.blank? ? {} : where('name LIKE ?', "#{letter}%")
  }
  
end
