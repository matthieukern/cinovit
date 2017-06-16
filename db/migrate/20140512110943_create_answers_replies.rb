class CreateAnswersReplies < ActiveRecord::Migration
  def change
    create_table :answers_replies, id: false do |t|
      t.integer :answer_id
      t.integer :reply_id
    end
  end
end
