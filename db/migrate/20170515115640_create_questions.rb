class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :address
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end
