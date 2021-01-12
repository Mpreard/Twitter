class Tweets < ActiveRecord::Migration[5.2]

  def change
    create_table :users do |t|
      t.string :email
      t.string :pseudo
      t.string :password
      t.string :nom
      t.string :prenom
      t.integer :age
      t.timestamps
    end

      create_table :tweets do |t|
        t.text :tweet
        t.belongs_to :user
        t.timestamps
      end

      create_table :comments do |t|
        t.text :comment
        t.belongs_to :user
        t.belongs_to :tweet
        t.timestamps
      end

      create_table :likes do |t|
        t.integer :like
        t.belongs_to :user
        t.belongs_to :tweet
        t.timestamps
      end

  end
end
