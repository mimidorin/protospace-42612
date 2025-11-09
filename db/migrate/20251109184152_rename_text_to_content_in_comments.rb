class RenameTextToContentInComments < ActiveRecord::Migration[7.1]
  def change
   rename_column :comments, :text, :content
  end
end
