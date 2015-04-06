class RenameDescritpionToDescriptionOnEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :descritpion, :description 
  end
end
