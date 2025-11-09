class ChangeOccupationAndPositionToText < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :occupation, :text
    change_column :users, :position, :text
  end
end
