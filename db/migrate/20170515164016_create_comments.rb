class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nickname
      t.string :content
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
