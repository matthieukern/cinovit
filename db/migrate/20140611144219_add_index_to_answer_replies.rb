class AddIndexToAnswerReplies < ActiveRecord::Migration
  def change
    add_index :answers_replies, :answer_id
    add_index :answers_replies, :reply_id
  end
end
