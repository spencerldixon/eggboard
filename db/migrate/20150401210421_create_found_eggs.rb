class CreateFoundEggs < ActiveRecord::Migration
  def change
    create_table :found_eggs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
