class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :field, index: true
      t.string :text_answer
      t.references :reply, index: true

      t.timestamps
    end
  end
end
