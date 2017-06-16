class Answer < ActiveRecord::Base
  belongs_to :field
  has_and_belongs_to_many :replies
end
