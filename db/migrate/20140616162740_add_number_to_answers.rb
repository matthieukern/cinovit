class AddNumberToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :number, :integer, default: 0
  end
end
