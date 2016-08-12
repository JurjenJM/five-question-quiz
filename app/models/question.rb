class Question < ActiveRecord::Base
  has_many :multiple_choice_options
end
