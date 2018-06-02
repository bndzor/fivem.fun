RegisterNetEvent("menu:registerModuleMenu")
RegisterNetEvent("menu:addModuleSubMenu")
RegisterNetEvent("menu:addModuleItem")
RegisterNetEvent("menu:isIDRegistered")
RegisterNetEvent("menu:setDesc")
RegisterNetEvent("menu:setGreyedOut")
RegisterNetEvent("menu:isGreyedOut")
RegisterNetEvent("menu:setRightText")
RegisterNetEvent("menu:removeByID")
RegisterNetEvent("menu:setOnOffState")
RegisterNetEvent("menu:getOnOffState")

local moduleContent = {}

AddEventHandler("menu:registerModuleMenu", function(name, cbdone, cbclicked)
	if not name then
		if cbdone then
			cbdone(nil)
		end
	else
		local name = trimTextLength(name, config.items.maxnamelength)
		
		local id = uuid()
		table.insert(moduleContent, {parents = {}, id = id, name = name, isMenu = true})
		
		SendNUIMessage({
			addModuleMenu = {id = id, name = name}
		})
		
		if cbclicked then
			RegisterNUICallback(id, function(data, mcb)
				cbclicked(id)
			end)
		end
		
		if cbdone then
			cbdone(id)
		end
	end
end)

AddEventHandler("menu:addModuleSubMenu", function(parent, name, cbdone, cbclicked)
	if not parent or not isIDRegistered(parent) or not name then
		if cbdone then
			cbdone(nil)
		end
	else
		local name = trimTextLength(name, config.items.maxnamelength)
		local id = uuid()
		
		local parentElement = getByID(parent)
		local parents = table.shallow_copy(parentElement.parents)
		table.insert(parents, parent)
		
		table.insert(moduleContent, {parents = parents, id = id, name = name, isMenu = true})
		
		SendNUIMessage({
			addModuleSubMenu = {parent = parent, id = id, name = name}
		})
		
		if cbclicked then
			RegisterNUICallback(id, function(data, mcb)
				cbclicked(id)
			end)
		end
		
		if cbdone then
			cbdone(id)
		end
	end
end)

AddEventHandler("menu:addModuleItem", function(menu, name, onoff, cbdone, cbclicked)
	if not name then
		if cbdone then
			cbdone(nil)
		end
	else
		local name = trimTextLength(name, config.items.maxnamelength)
		if menu and not isIDRegistered(menu) then
			if cbdone then
				cbdone(nil)
			end
		else
			local id = uuid()
			
			if menu then
				local parentElement = getByID(menu)
				local parents = table.shallow_copy(parentElement.parents)
				table.insert(parents, menu)
			end
			
			local data = {parents = parents, id = id, name = name, onoff = onoff}
			table.insert(moduleContent, data)
				
			SendNUIMessage({
				addModuleItem = {menu = menu, id = id, name = name, datastate = onoff}
			})
			
			if cbclicked then
				if type(onoff) ~= "boolean" then
					RegisterNUICallback(id, function(data, mcb)
						cbclicked(id, nil)
					end)
				else
					RegisterNUICallback(id, function(data, mcb)
						getByID(id).onoff = data.datastate
						cbclicked(id, data.datastate)
					end)
				end
			end
			
			if cbdone then
				cbdone(id)
			end
		end
	end
end)

AddEventHandler("menu:isIDRegistered", function(id, cb)
	result = false
	if id then
		result = isIDRegistered(id)
	end
	
	if cb then
		cb(result)
	end
end)

AddEventHandler("menu:setDesc", function(id, text)
	if id and isIDRegistered(id) and text then
		local text = trimTextLength(text, config.items.maxdesclength)
		local element = getByID(id)
		
		if element.desc ~= text then
			element.desc = text
			SendNUIMessage({
				setDesc = {id = id, text = text}
			})
		end
	end
end)

AddEventHandler("menu:setGreyedOut", function(state, id)
	if id and isIDRegistered(id) and type(state) == "boolean" then
		local element = getByID(id)
		
		if element.greyedout ~= state then
			element.greyedout = state
			SendNUIMessage({
				setExtraClass = {id = id, className = "greyedout", state = state}
			})
		end
	end
end)

AddEventHandler("menu:isGreyedOut", function(id, cb)
	if cb then
		if not id or not isIDRegistered(id) then
			cb(nil)
		else
			cb(getByID(id).greyedout)
		end
	end
end)

AddEventHandler("menu:setRightText", function(id, text)
	if id and isIDRegistered(id) then
		if text then
			local text = trimTextLength(text, config.items.righttextlength)
		end
		local element = getByID(id)
		
		if element.righttext ~= text then
			element.righttext = text
			
			if element.onoff == nil and not element.isMenu then
				SendNUIMessage({
					setRightText = {id = id, text = text}
				})
			end
		end
	end
end)

AddEventHandler("menu:getRightText", function(id, cb)
	if cb then
		if not id or not isIDRegistered(id) then
			cb(nil)
		else
			cb(getByID(id).righttext)
		end
	end
end)

AddEventHandler("menu:removeByID", function(id, retainParent)
	if id and isIDRegistered(id) then
		local removables = {}
		for _, element in ipairs(moduleContent) do
			for _, parent in ipairs(element.parents) do
				if parent == id then
					table.insert(removables, element.id)
				end
			end
		end
		if not getByID(id).isMenu then
			table.insert(removables, id)
		end
		
		SendNUIMessage({
			removeElements = {removables = removables, retainParent = retainParent}
		})
		
		for i, removable in ipairs(removables) do
			for i=#moduleContent, 1, -1 do
				if moduleContent[i].id == removable then
					table.remove(moduleContent, i)
				end
			end
		end
	end
end)

AddEventHandler("menu:setOnOffState", function(id, state)
	if id and isIDRegistered(id) and type(state) == "boolean" then
		local element = getByID(id)
		if element.onoff ~= nil and element.onoff ~= state then
			element.onoff = state
			SendNUIMessage({
				setModuleItemDatastate = {id = id, state = state}
			})
		end
	end
end)

AddEventHandler("menu:getOnOffState", function(id, cb)
	if cb then
		if not id or not isIDRegistered(id) then
			cb(nil)
		else
			cb(getByID(id).onoff)
		end
	end
end)

function trimTextLength(text, length)
	if string.len(text) > length then
		return string.sub(text, 1, length)
	else
		return text
	end
end

function getByID(id)
	for _, item in ipairs(moduleContent) do
		if item.id == id then
			return item
		end
	end
end

function isIDRegistered(id)
	return getByID(id) ~= nil
end

function table.shallow_copy(t)
  local t2 = {}
  for k,v in pairs(t) do
    t2[k] = v
  end
  return t2
end

math.randomseed(GetGameTimer())
function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end)
end