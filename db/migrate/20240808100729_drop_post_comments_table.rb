class DropPostCommentsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :post_comments
  end

  def down
    create_table :post_comments do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
