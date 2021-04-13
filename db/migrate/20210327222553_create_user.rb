class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :nom
      t.text :prenom
      t.text :email
      t.text :contact
      t.string :password
      t.timestamps
    end

  end
end
