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
      t.belong_to :user
      t.timestamp
    end

    create_table :comments do |t|
      t.text :comment
      t.belong_to :user
      t.belong_to :tweet
      t.timestamp
    end

    create_table :likes do |t|
      t.integer :like
      t.belong_to :user
      t.belong_to :tweet
      t.timestamp
    end

  end
end
