function getName()
    return "zhcn"
end

function init()

end

function getType()
    return "Command";
end

function getDescription()
    return "Set Hypixel Language to chinese simplified"
end

function execute()
    player.sendChatMessage("/lang jtzw")
end