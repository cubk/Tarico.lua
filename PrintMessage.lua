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
		player.sendChatMessage("/shout �й��ڿͣ����첻Ҫ�ڿͣ�������֪���ĸ��ڿ��ھ�����ʼ֮ǰ�õ��˺����ط������Ľ���!");
	else
		player.sendChatMessage("/ac �й��ڿͣ����첻Ҫ�ڿͣ�������֪���ĸ��ڿ��ھ�����ʼ֮ǰ�õ��˺����ط������Ľ���!");
	end
    client.setModuleState(moduleName,false);
end