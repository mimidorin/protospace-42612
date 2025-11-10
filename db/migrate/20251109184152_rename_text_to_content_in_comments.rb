class RenameTextToContentInComments < ActiveRecord::Migration[7.1]
  def up
    # textカラムがある場合のみ、contentへリネーム
    if column_exists?(:comments, :text)
      rename_column :comments, :text, :content
    end
  end

  def down
    # content→text に戻すのも、content がある場合のみ
    if column_exists?(:comments, :content) && !column_exists?(:comments, :text)
      rename_column :comments, :content, :text
    end
  end
end

