class CreateLikingUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :liking_users do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key: true
      t.timestamps
    end
  end
end
