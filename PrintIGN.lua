function getName()
    return "ign"
end

function init()

end

function getType()
    return "Command";
end

function getDescription()
    return "Display your minecraft name"
end

function execute()
    client.print(player.getName())
end