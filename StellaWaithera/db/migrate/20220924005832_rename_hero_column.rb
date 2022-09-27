class RenameHeroColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :heroes, :super_power, :super_name
  end
end
