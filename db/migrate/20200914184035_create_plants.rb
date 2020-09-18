class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
  end
end
end

# class AddTimestampsToUser < ActiveRecord::Migration
#   def change_table
#       add_timestamps(:users)
#   end
# end
