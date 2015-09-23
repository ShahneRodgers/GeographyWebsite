class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username, :null => false, :limit => 20
    	t.string :encrypted_password, :null => false
    	t.string :salt, :null => false
    	t.integer :countries, :null => false
      t.timestamps
    end
  end
end
