class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  def up
    create_table :admin_users_pages, id: false do |t|
      t.integer :admin_user_id, index: true
      t.integer :page_id, index: true
    end
  end

  def down
    drop_table :admin_users_pages
  end
end
