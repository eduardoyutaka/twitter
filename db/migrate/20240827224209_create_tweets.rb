class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :body
      t.references :sender, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
