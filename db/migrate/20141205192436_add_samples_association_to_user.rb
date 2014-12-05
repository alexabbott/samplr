class AddSamplesAssociationToUser < ActiveRecord::Migration
  def self.up
    add_column :samples, :user_id, :integer
    add_index 'samples', ['user_id'], :name => 'index_user_id'
  end

  def self.down
    remove_column :samples, :user_id
  end
end
