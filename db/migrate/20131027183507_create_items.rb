class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.datetime :complete_by

      t.timestamps
    end
  end
end
