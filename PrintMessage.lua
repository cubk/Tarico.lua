local moduleName = "PrintMessage";

function getName()
    return moduleName
end

function getType()
    return "Module";
end

function init()
	client.sendNotification("Print Message lua by cubk",0)
	values.addOption(moduleName,"Shout",true)
end

function onEnable()
	if(values.getOptionValue(moduleName,"Shout"))
	then
		player.sendChatMessage("/shout 中国黑客，今天不要黑客，据我所知有四个黑客在决斗开始之前得到了海像素服务器的禁令!");
	else
		player.sendChatMessage("/ac 中国黑客，今天不要黑客，据我所知有四个黑客在决斗开始之前得到了海像素服务器的禁令!");
	end
    client.setModuleState(moduleName,false);
end