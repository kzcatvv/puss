class PlaceInfo < ActiveRecord::Base
	PLACE_KIND = {"01" => "羽毛球", "02" => "pingpang"}

	def get_max_place_no(place_kind)
		placeno = PlaceInfo.where("place_kind = ?",place_kind).maximum("place_no")
		if placeno == nil 
			return 0
		else
			return placeno
		end
	end
end
