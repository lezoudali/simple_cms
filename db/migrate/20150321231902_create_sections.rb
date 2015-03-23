class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.string :name
      t.integer :postion
      t.boolean :visible, :default => false
      t.string :content_type
      t.text :content
      t.integer :page_id

      t.timestamps null: false
    end
    add_index(:sections, :page_id)
  end

  def down
    drop_table :sections
  end
end
