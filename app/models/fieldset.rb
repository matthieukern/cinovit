class Fieldset < ActiveRecord::Base
  require 'csv'
  has_many :fields, dependent: :destroy

  before_validation :is_valid_json
  before_validation :get_title
  before_validation :get_fields

  validates :json, presence: true
  validates :title, presence: true, uniqueness: true

  attr_accessor :obj

  def to_csv
    CSV.generate do |csv|

      first_row = [ '' ]
      pos = []

      self.fields.each do |field|
        next if field.question_type == 'open'
        field.answers.each do |answer|
          first_row << answer.text_answer
          pos << answer.answer_id
        end
      end

      csv << first_row

      self.fields.each do |field|
        next if field.question_type == 'open'
        row = []
        row << field.question
        field.answers.each do |answer|
          row[pos.find_index(answer.answer_id) + 1] = answer.number
        end
        csv << row
      end

    end
  end

  private

  def is_valid_json
    begin
      @obj = JSON.parse json
    rescue Exception
      errors[:base] << "Invalid json"
      false
    end
  end

  def get_title
    self.title = @obj['title'];
    true
  end

  def get_fields
    answers = @obj['answers']
    @obj['questions'].each do |question|
      field = Field.new question: question['name'], question_id: question['question_id'], question_type: question['type']
      question['answers'].each do |answer|
        an = answers.find { |a| a['answer_id'] == answer['answer_id'] }
        field.answers << Answer.new(text_answer: an['name'], answer_id: an['answer_id']) if an
      end unless question['type'] == 'open'
      self.fields << field
    end
    true
  end

end
