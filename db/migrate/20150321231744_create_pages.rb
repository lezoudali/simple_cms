class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :name
      t.integer :postion
      t.boolean :visible, default: true
      t.integer :permalink, index: true
      t.integer :subject_id, index: true

      t.timestamps null: false
    end
  end

  def down
    drop_table :pages
  end
end
