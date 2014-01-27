class ChangePlaceInfo < ActiveRecord::Migration
  def change
  	remove_column :place_infos, :place_no
  	add_column :place_infos, :place_no, :integer
  end
end
