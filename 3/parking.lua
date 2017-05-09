--[[
	getParking()
		funkcija koja bi vracala key,value tablicu sa listom parking
		mjesta i aviona koji su im dodijeljeni npr.
		
		{
			1 = 20,
			2 = 54,
			3 = nil,
			.
			.
			.
		}

		gdje bi nil označavao slobodno parking mjesto
--]]

local getAvailableParking = function()
	
	local parking = getParking()
	local availableParking = {}

	for k,v in pairs(parking) do
		if( v == nil )
		then
			table.insert(availableParking, k)
		end
	end

	return availableParking

end


local setParking = function (airplane)

	local _airplane = airplane
	local _availableParking = getAvailableParking()
	local size = table.getn(_availableParking)

	_airplane.parkingID = _availableParking[math.random(1, size)]

	return _airplane

end


--[[
	getAirplane(airplaneID)
		funkcija koja bi dobavljala avion po ID-ju i vratila ga
		kao objekt/tablicu
--]]

local assignParking = function(airplaneID)

	local airplane = getAirplane(airplaneID)
	if( airplane.parkingID == nil )
	then
		airplane = setParking(airplane)
	end

	return airplane.parkingID
end