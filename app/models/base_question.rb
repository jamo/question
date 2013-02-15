class BaseQuestion < ActiveRecord::Base
  attr_accessible :title
  has_many :checkbox_groups
  has_many :radio_button_groups
  has_many :text_questions
end
