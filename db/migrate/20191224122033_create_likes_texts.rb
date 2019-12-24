class CreateLikesTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :likes_texts do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key: true
      t.timestamps
    end
  end
end
