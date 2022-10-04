function onEvent(name, value1, value2)
   if name == 'D2 Distorted' then
	makeLuaSprite('ye', 'stages/disneydistorted', -200, -150);
	addLuaSprite('ye',false)
        setLuaSpriteScrollFactor('ye', 1, 1);

	makeLuaSprite('tre', 'stages/treedistorted', -200, -150);
	addLuaSprite('tre',true)
        setLuaSpriteScrollFactor('tre', 1, 1);
    
    end
end