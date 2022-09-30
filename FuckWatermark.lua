function getName()
    return "FuckYouWatermark"
end

function getType()
    return "Module";
end

function onEnable()
    client.printVersion()
end

function init()

end

function onRender2D()
    render.drawString("Fuck you", 2, 2, color(255, 255, 255, 255), true)
end