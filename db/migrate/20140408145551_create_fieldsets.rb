class CreateFieldsets < ActiveRecord::Migration
  def change
    create_table :fieldsets do |t|
      t.text :json

      t.timestamps
    end
  end
end
