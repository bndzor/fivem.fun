$(function() {
    window.addEventListener("message", function(event) {
        var data = event.data;
        
        if (data.config)
			handleConfig(data.config.data);
    });
});

function handleConfig(config) {
	setTitleTextFromConfig(config);
	setTitleColorFromConfig(config);
	setSubtitleColorFromConfig(config);
	setDescColorFromConfig(config);
	
	if (config.items.pagelimit != null)
		pagelimit = config.items.pagelimit;
}

function setTitleTextFromConfig(config) {
	if (config.title.text)
		$("#title").text(config.title.text);
}

function setTitleColorFromConfig(config) {
	var color = config.title.color;
	var $title = $("#title");
	if (color != null) {
		if (color.css != null)
			$title.css("background", color.css);
		else {
			var from = color.from;
			var to = color.to;
			$title.css("background",
				"linear-gradient(90deg, rgba(" + from.r + "," + from.g + "," + from.b + "," + from.a + ")" + 
				", rgba(" + to.r + "," + to.g + "," + to.b + "," + to.a + ")");
		}
		
		$title.css("color", "rgb(" + color.font.r + "," + color.font.g + "," + color.font.b + ")");
	}
}

function setSubtitleColorFromConfig(config) {
	var color = config.title.color.subtitle;
	var $subtitle = $("#subtitle");
	if (color != null) {
		if (color.css != null)
			$subtitle.css("background", color.css);
		else {
			var from = color.from;
			var to = color.to;
			$subtitle.css("background",
				"linear-gradient(90deg, rgba(" + from.r + "," + from.g + "," + from.b + "," + from.a + ")" + 
				", rgba(" + to.r + "," + to.g + "," + to.b + "," + to.a + ")");
		}
		
		$subtitle.css("color", "rgb(" + color.font.r + "," + color.font.g + "," + color.font.b + ")");
	}
}

function setDescColorFromConfig(config) {
	var color = config.description.color;
	var $desc = $("#desc");
	if (color != null) {
		if (color.css != null)
			$desc.css("background", color.css);
		else {
			var from = color.from;
			var to = color.to;
			$desc.css("background",
				"linear-gradient(90deg, rgba(" + from.r + "," + from.g + "," + from.b + "," + from.a + ")" + 
				", rgba(" + to.r + "," + to.g + "," + to.b + "," + to.a + ")");
		}
		
		$desc.css("color", "rgb(" + color.font.r + "," + color.font.g + "," + color.font.b + ")");
	}
}