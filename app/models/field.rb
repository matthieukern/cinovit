class Field < ActiveRecord::Base
  belongs_to :fieldset

  has_many :answers, dependent: :destroy

end
