$(function() {
    window.addEventListener("message", function(event) {
        var data = event.data;

		if (data.addModuleMenu)
			addModuleMenu(mainmenu, data.addModuleMenu);
		else if (data.addModuleSubMenu)
			addModuleMenu(menus[data.addModuleSubMenu.parent], data.addModuleSubMenu);
		else if (data.addModuleItem) {
			if (!data.addModuleItem.menu)
				addModuleItem(mainmenu, data.addModuleItem);
			else
				addModuleItem(menus[data.addModuleItem.menu], data.addModuleItem);
		} else if (data.setDesc)
			setModuleElementDesc(data.setDesc.id, data.setDesc.text);
		else if (data.setExtraClass)
			setModuleElementExtraClass(data.setExtraClass.id, data.setExtraClass.className, data.setExtraClass.state);
		else if (data.setRightText)
			setModuleItemRightText(data.setRightText.id, data.setRightText.text);
		else if (data.removeElements)
			removeElementsByIDsProperly(data.removeElements.removables);
		else if (data.setModuleItemDatastate)
			setModuleItemDatastate(data.setModuleItemDatastate.id, data.setModuleItemDatastate.state);
    });
});

function addModuleMenu(parentmenu, menu) {
	if (!parentmenu.hasContent && !menu.preset) {
		parentmenu.items[0] = [];
		parentmenu.hasContent = true;
	}
	
	menu.menu = "<div id='" + menu.id + "'></div>";
	menu.parent = parentmenu.id;
	menu.type = "menu";
	menu.items = [];
	menu.extraClasses = [];
	menus[menu.id] = menu;
	addModuleItem(menu, {name: "It's empty in here!", id: menu.id + "-empty", preset: true});
	addModuleItem(parentmenu, {id: menu.id, name: menu.name, isMenu: true, extraClasses: []});
	
	if (content != null && content.id == parentmenu.id)
		showMenu(content);
}

function addModuleItem(menu, item) {
	if (!menu.hasContent && !item.preset) {
		menu.items[0] = [];
		menu.hasContent = true;
	}
	
	var itemitem;
	if (item.isMenu) {
		itemitem = "<p class='menuoption submenuitem'>" + item.name + "</p>";
		item.type = "menu";
	} else {
		itemitem = "<p class='menuoption'>" + item.name + "</p>";
		item.type = "item";
	}
	
	item.item = itemitem;
	item.parent = menu.id;
	item.extraClasses = [];
	
	var menuPage = getEmptyItemSlotPage(menu);
	var newSize = menuPage.push(item);
	// Get latest element from page array, which should be this item
	items[item.id] = menuPage[newSize - 1];
	
	if (content != null && content.id == menu.id)
		showMenu(content);
}

function setModuleElementDesc(id, text) {
	items[id].desc = text;
	
	if (content)
		updateDesc(content.items[currentpage][itemcounter]);
}

function setModuleElementExtraClass(id, className, state) {
	var extraClass = getModuleElementExtraClass(items[id], className);
	if (extraClass == null)
		items[id].extraClasses.push({name: className, state: state});
	else
		extraClass.state = state;
	
	// Update if element is being displayed
	if (content != null) {
		for (var i = 0; i < content.items[currentpage].length; i++) {
			if (content.items[currentpage][i].id == id) {
				if (!state)
					$(".menuoption").eq(i + itemcounteroffset).removeClass(className);
				else
					$(".menuoption").eq(i + itemcounteroffset).addClass(className);
			}
		}
	}
}

function getModuleElementExtraClass(element, className) {
	for (var i = 0; i < element.extraClasses.length; i++)
		if (element.extraClasses[i].name == className)
			return element.extraClasses[i];
}

function setModuleItemRightText(id, text) {
	items[id].righttext = text;
	
	// Update if element is being displayed
	if (content != null) {
		for (var i = 0; i < content.items[currentpage].length; i++) {
			if (content.items[currentpage][i].id == id) {
				if (text == null)
					$(".menuoption").eq(i + itemcounteroffset).attr("data-state", "");
				else
					$(".menuoption").eq(i + itemcounteroffset).attr("data-state", content.items[currentpage][i].righttext);
			}
		}
	}
}

function removeElementsByIDsProperly(ids) {
	var afterwardsMenu;
	
	if (content != null)
		for (var i = 0; i < content.items[currentpage].length; i++)
			for (var j = 0; j < ids.length; j++)
				if (content.items[currentpage][i].id == ids[j])
					afterwardsMenu = content.items[currentpage][i].parent;
				
	for (var i = 0; i < ids.length; i++)
		removeElementByID(ids[i]);
	
	if (afterwardsMenu != null)
		if (menus[afterwardsMenu] == null)
			showMenu(mainmenu);
		else
			showMenu(menus[afterwardsMenu]);
}

function removeElementByID(id) {
	var parentElement = menus[items[id].parent];
	if (parentElement != null)
		for (var i = 0; i < parentElement.items.length; i++)
			for (var j = parentElement.items[i].length - 1; j > -1; j--)
				if (parentElement.items[i][j].id == id) {
					parentElement.items[i].splice(j, 1);
					
					if (j == 0) {
						parentElement.items.splice(i, 1);
						if (i == 0)
							removeElementByID(parentElement.id);
					}
				}
		
	if (items[id] != null)
		items[id] = null;
	if (menus[id] != null)
		menus[id] = null;
}

function setModuleItemDatastate(id, state) {
	var item = items[id];
	if (item.datastate != null)
		item.datastate = state;
	
	// Update if element is being displayed
	if (content != null)
		for (var i = 0; i < content.items[currentpage].length; i++)
			if (content.items[currentpage][i].id == id) {
				if (!state)
					$(".menuoption").eq(i + itemcounteroffset).attr("data-state", "OFF");
				else
					$(".menuoption").eq(i + itemcounteroffset).attr("data-state", "ON");
			}
}

function getEmptyItemSlotPage(menu) {
	var page = 0;
	while (true) {
		if (menu.items[page] == null) {
			menu.items[page] = [];
			return menu.items[page];
		} else if (menu.items[page].length < pagelimit)
			return menu.items[page];
		page++;
	}
}

function menuItemScroll(dir) {
    $(".menuoption").eq(itemcounter + itemcounteroffset).removeClass("selected");
    
	var itemamount = content.items[currentpage].length - 1;
	if (dir == "up") {
		if (itemcounter > 0)
			itemcounter -= 1;
		else
			itemcounter = itemamount;
	} else if (dir == "down") {
		if (itemcounter < itemamount)
			itemcounter += 1;
		else
			itemcounter = 0;
	}
	
    updateDesc(content.items[currentpage][itemcounter]);
    $(".menuoption").eq(itemcounter + itemcounteroffset).addClass("selected");
    playSound("NAV_UP_DOWN");
}

function updateDesc(item) {
	if (item.desc == null)
		$desc.hide();
	else {
		$desc.show();
		$desc.text(item.desc);
	}
}

function updateItemDataStateText($item, state) {
	var datastateText = "OFF";
	if (state)
		datastateText = "ON";
	$item.attr("data-state", datastateText);
}