local moduleName = "ForceSprint";

function getName()
    return moduleName
end

function getType()
    return "Module";
end

function init()

end

function onTick()
	player.setSprinting(true)
end