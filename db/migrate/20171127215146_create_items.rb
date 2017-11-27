class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
