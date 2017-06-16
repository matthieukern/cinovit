class AddQuestionIdToFields < ActiveRecord::Migration
  def change
    add_column :fields, :question_id, :string
  end
end
