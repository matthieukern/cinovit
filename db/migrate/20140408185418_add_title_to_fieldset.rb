class AddTitleToFieldset < ActiveRecord::Migration
  def change
    add_column :fieldsets, :title, :string
  end
end
