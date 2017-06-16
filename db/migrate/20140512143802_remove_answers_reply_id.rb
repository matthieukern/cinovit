class RemoveAnswersReplyId < ActiveRecord::Migration
  def change
    remove_column :answers, :reply_id, :integer
  end
end
