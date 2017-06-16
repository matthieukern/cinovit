class AddTypeToField < ActiveRecord::Migration
  def change
    add_column :fields, :question_type, :string
  end
end
