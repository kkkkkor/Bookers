class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :本のタイトル
      t.string :感想

      t.timestamps
    end
  end
end
