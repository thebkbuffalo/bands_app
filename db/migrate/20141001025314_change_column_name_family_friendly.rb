class ChangeColumnNameFamilyFriendly < ActiveRecord::Migration
  def change
    rename_column :venues, :family_frielndly, :family_friendly
  end
end
