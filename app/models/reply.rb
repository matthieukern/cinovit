class Reply < ActiveRecord::Base
  has_and_belongs_to_many :answers

  def self.get_answers json
    replies = []

    json.each do |reply_sent|
      reply = Reply.new
      reply_sent = reply_sent[1]
      reply_sent['answers'].each do |ans|
        ans.each do |a|
          if a['idanswer']
            answers = Answer.includes(field: :fieldset).where(answer_id: a['idanswer']).where(fieldsets: { title: reply_sent['title'] })
            answers.each do |answer|
              answer.number = answer.number.to_i + 1
            end
            reply.answers << answers
          elsif a['answer']
            field = Field.includes(:fieldset).where(fieldsets: { title: reply_sent['title'] }).where(question_id: a['idquestion']).first
            if field.answers.any?{ |b| b.text_answer == a['answer'] }
              open_answer = field.answers.where(text_answer: a['answer']).first
            else
              open_answer = Answer.new(text_answer: a['answer'], answer_id: nil)
              open_answer.field = field
            end
            reply.answers << open_answer
          end
        end
      end
      replies << reply
    end

    replies.each do |reply|
      Answer.transaction do
        reply.answers.each do |answer|
          answer.save!
        end
      end
    end

    Reply.transaction do
      replies.each do |reply|
        reply.save!
      end
    end
  end

end
