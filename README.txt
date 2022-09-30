==============================================
Tarico Lua API Document
==============================================
* API Version: 1.1
* Client Version: Tarico 1.41

Abstract Methods:
init

Event Methods:
onTick
onPreUpdate
onPostUpdate
onRender2D
onPacketSend
onPacketReceive

Module Abstract Methods:
onEnable
onDisable

Command Abstract Methods:
execute
==============================================
Command API:
==============================================
getArgsLength() -> return execute function args length
getArgs(index) -> get execute function args form index
==============================================
Client API:
==============================================
client.printVersion() -> print tarico client version in java print stream
client.print(text) -> print a text in minecraft chat message
	client.print("Hello world!") -> print Hello world! in chat
client.getUsername() -> return tarico username
client.sendNotification(type,text) -> send notification
	type is a number value
	0 = Information
	1 = Warning
	2 = Error
	3 = Succeed
	print a succeed notification:
	client.sendNotification(3,"my text")
client.getTimer() -> return minecraft timer speed
client.setTimer(timerspeed) -> set minecraft timer speed
	client.setTimer(2.0) -> set timer speed to 2.0
client.getFPS() -> return minecraft FPS
client.println(text) -> print message in java print stream
	client.println("This is a log") -> print a log line
client.isInGuiChat() -> return true if player opened Chat Gui
client.getBPS() -> return player move blocks in 1 second
client.getModuleState(name) -> return true if the module is toggled
	client.getModuleState("LegitAura") -> return true if LegitAura enabled
client.setModuleState(name,state) -> set a module toggle state
	client.setModuleState("LegitAura",true) -> enable legitaura
client.setSuffix(name,suffix) -> set a module suffix in arraylist
client.setChinese(name,chinese) -> set a module chinese text
==============================================
Input API:
==============================================
input.getMouseX() -> return mouse X position in screen
input.getMouseY() -> return mouse Y position in screen
input.isMouseDown(button) -> return true if this button is down
input.isKeyDown(keyCode) -> return true if this key is down

tips: you can find mouse button code and keycode in lwjgl document:
Keyboard: https://legacy.lwjgl.org/javadoc/org/lwjgl/input/Keyboard.html
Mouse: https://legacy.lwjgl.org/javadoc/org/lwjgl/input/Mouse.html
==============================================
Packet API:
==============================================
packet.sendC03(onGround) -> send a c03 packet player
packet.sendC04(x,y,z,onGround) -> send a c04 packet player position
packet.sendC05(yaw,pitch,onGround) -> send a c05 packet player look
packet.sendC06(x,y,z,yaw,pitch,onGround) -> send a c06 packet player pos look

tips: you can add "NoEvent" suffix in Code for no event post like:
	packet.sendC03NoEvent(onGround)
	packet.sendC04NoEvent(x,y,z,onGround)
==============================================
Player API:
==============================================
player.jump() -> do player jump
player.swingItem() -> do swing
player.getPosX() -> return player X position
player.getPosY() -> return player Y position
player.getPosZ() -> return player Z position
player.attack(targetID) -> attack a entity without swing
player.isSprinting() -> return true if player is sprinting
player.isSneaking() -> return true if player is sneaking
player.setSprinting(sprinting) -> set player is sprinting
player.sendChatMessage(text) -> send a chat message
player.getEntityID() -> return entity id of player
player.getHealth() -> return player health
player.setHealth(health) -> set player health ( Client Side )
player.getFallDistance() -> return player fall distance
player.getHurtTime() -> return player hurt time
player.getOnGround() -> return true if player onGround
player.setOnGround(onGround) -> set player onGround state
player.getName() -> return player name
player.isMoving() -> return true if player is moving
==============================================
Visual(Render) API:
==============================================
render.drawRect(x,y,width,height,color) -> draw a rect on screen
render.drawString(string,x,y,color,shadow) -> draw a string on screen
render.getStringWidth(string) -> return width of string
render.getScreenWidth() -> return screen width
render.getScreenHeight() -> return screen height
==============================================
Timer API:
==============================================
timer.create(name) -> create a timer
timer.reset(name) -> reset a timer
timer.delay(name,time) -> return true if delay time complete
==============================================
Value API:
==============================================
values.addOption(module,name,state) -> add a option(boolean) value to a module
values.addNumber(module,name,value,minimum,maximum,increment) -> add a number value to a module
values.getOptionValue(module,name) -> get a option value state
values.getNumberValue(module,name) -> get a number value
==============================================
World API:
==============================================
world.getEntities() -> return a table of entities in the world
world.removeEntity(id) -> remove a entity in world
world.isServerBot(id) -> return true if this entity is a server bot
world.isEntityLivingBase(id) -> return true if this entity is a instance of EntityLivingBase
world.isEntityPlayer(id) -> return true if this entity is a player
world.isEntityInvisible(id) -> return true if this entity is invisible
world.isEntityAnimal(id) -> return true if this entity is a animal
world.isEntityMob(id) -> return true if this entity is a mob
world.getEntityName(id) -> return this entity name
world.getEntityHealth(id) -> return this entity health
world.getEntityHurtTime(id) -> return this entity hurt time
world.isEntityDead(id) -> return true if this entity is dead
world.getAuraTarget() -> return id of LegitAura target
==============================================
by cubk
==============================================
