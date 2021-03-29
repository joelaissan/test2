class User < ActiveRecord::Migration[6.1]
  def change
    create_table :user do |t|
      t.text :nom
      t.text :prenom
      t.text :email
      t.text :contact
      t.text :password
      t.timestamps
    end
    
  end
end
