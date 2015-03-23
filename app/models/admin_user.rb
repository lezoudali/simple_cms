class AdminUser < ActiveRecord::Base
  
  # To configure a different table name:
  # self.table_name = :admin_users
  has_many :section_edits
  has_many :sections, through: :section_edits
  has_and_belongs_to_many :pages
end
