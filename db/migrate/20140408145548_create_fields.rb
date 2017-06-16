class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :question
      t.references :fieldset, index: true

      t.timestamps
    end
  end
end
