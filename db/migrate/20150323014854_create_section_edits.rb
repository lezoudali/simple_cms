class CreateSectionEdits < ActiveRecord::Migration
  def up
    create_table :section_edits do |t|
      t.references :admin_user, index: true
      t.references :section
      t.string :summary
      t.timestamps
    end
  end

  def down
    drop_table :section_edits
  end
end
