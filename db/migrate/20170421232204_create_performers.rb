class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name, null: false

      t.timestamps
    end 
  end
end
