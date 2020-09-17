class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
  end
end
end
