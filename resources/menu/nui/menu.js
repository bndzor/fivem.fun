var itemcounter;
var currentpage;
var itemcounteroffset = 2;
var pagelimit = 10;

var $container;
var $subtitle;
var $desc;
var mainmenu;
var menus = [];
var items = [];

var content;
var pageindicator = "<p id='pageindicator'></p>"

$(function() {
    init();
    
    window.addEventListener("message", function(event) {
        var data = event.data;
        
        if (data.showmenu) {
            showMenu(mainmenu);
            $container.show();
            playSound("YES");
        } else if (data.hidemenu) {
			if ($container.is(":visible")) {
				$container.hide();
				playSound("NO");
			}
        }
        
        else if (data.menuenter)
            handleSelectedOption();
        else if (data.menuback)
            menuBack(data.nosound);
        
        else if (data.menuup)
            menuItemScroll("up");
        else if (data.menudown)
            menuItemScroll("down");
        
        else if (data.menuleft)
            menuPageScroll("left");
        else if (data.menuright)
            menuPageScroll("right");
		
		else if (data.toMainMenu)
			showMenu(mainmenu);
    });
});

function init() {
	$container = $("#menucontainer");
	$subtitle = $("#subtitle");
	$desc = $("#desc");
	
	mainmenu = {id: "mainmenu", name: "Main Menu", menu: $("#mainmenu").remove(), items: []};
	menus[mainmenu.id] = mainmenu;
	addModuleItem(mainmenu, {name: "Nothing in here it seems 🤔", id: "thenking", preset: true});
	setModuleElementDesc("thenking", "Add modules for content");
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

function menuPageScroll(dir) {
	var newpage;
	if (dir == "left")
		newpage = currentpage - 1;
	else if (dir == "right")
		newpage = currentpage + 1;
	
    if (pageExists(newpage))
        showPage(newpage);

    playSound("NAV_UP_DOWN");
}

function menuBack(nosound) {
    if (content.parent == null) {
        $container.hide();
        sendData("menuclose", {});
    } else
        showMenu(menus[content.parent]);
    
	if (!nosound)
		playSound("BACK");
}

function resetSelect() {
    $(".menuoption").each(function(i, obj) {
		$(this).removeClass("selected");
    });
    
    itemcounter = 0;
	updateDesc(content.items[currentpage][itemcounter]);
    $(".menuoption").eq(itemcounter + itemcounteroffset).addClass("selected");
}

function handleSelectedOption() {
    var item = content.items[currentpage][itemcounter];
    
	var greyedout = getModuleElementExtraClass(item, "greyedout");
	if (greyedout == null || !greyedout.state) {
		if (item.type == "menu") {
			showMenu(menus[item.id]);
			sendData(item.id, {});
		} else if (item.type == "item") {
			var data = {};
			if (item.datastate != null) {
				item.datastate = !item.datastate;
				data.datastate = item.datastate;
				updateItemDataStateText($(".menuoption").eq(itemcounter + itemcounteroffset), data.datastate);
			}
			sendData(item.id, data);
		}
	}
    
    playSound("SELECT");
}

function showMenu(menu) {
    if (content != null)
        $("#" + content.id).remove();
    
    content = menu;
    $desc.before(content.menu);
	$subtitle.text(content.name);
    
    showPage(0);
}

function showPage(page) {
	var $content = $("#" + content.id);
	
    if (currentpage != null)
        $content.empty();
    
    currentpage = page;
    
    for (var i = 0; i < content.items[currentpage].length; i++) {
		var item = content.items[currentpage][i];
		var $item = $(item.item);
		
		if (item.datastate != null)
			updateItemDataStateText($item, item.datastate);
		else {
			if (item.righttext == null)
				$item.attr("data-state", "");
			else
				$item.attr("data-state", item.righttext);
		}
		
		if (item.extraClasses != null) {
			for (var j = 0; j < item.extraClasses.length; j++) {
				if (!item.extraClasses[j].state)
					$item.removeClass(item.extraClasses[j].name);
				else
					$item.addClass(item.extraClasses[j].name);
			}
		}
			
		$content.append($item);
	}
    
	$content.append(pageindicator);
    
    if (content.items.length - 1 > 0)
        $("#pageindicator").text("Page " + (currentpage + 1) + " / " + (content.items.length));
    
    resetSelect();
}

function pageExists(page) {
    return content.items[page] != null;
}

function sendData(name, data) {
    $.post("http://menu/" + name, JSON.stringify(data), function(datab) {
        console.log(datab);
    });
}

function playSound(sound) {
    sendData("playsound", {name: sound});
}

function debug(msg) {
    sendData("print", {msg: msg});
}