function getName()
    return "ValueExample"
end

function getType()
    return "Module";
end

function init()
	values.addOption("ValueExample","Test",true)
	values.addOption("ValueExample","Test2",false)
	values.addNumber("ValueExample","FloatNumber",1.0,0.0,1.0,0.1)
	values.addNumber("ValueExample","IntNumber",1.0,0.0,1.0,1.0)
end