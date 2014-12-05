class CreateSamples < ActiveRecord::Migration
  def change

    #create table named users, the plural of user, which is our model name
    create_table :samples do |t|

      #define the attributes (columns), and give them a type, in this case string 
      t.string :name
      t.string :category
      t.string :url

      #this will add created_at and updated_at fields, both timestamps
      t.timestamps null: false
    end
  end
end