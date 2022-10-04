function onEvent(name, value1, value2)
   if name == 'D1 Distorted' then
    makeLuaSprite('ye', 'stages/clubhousedistort', -350, -150);
    addLuaSprite('ye',false)

	makeLuaSprite('headisbackomg', 'Stages/clubhouse-markus-head', -110, 420);
	addLuaSprite('headisbackomg',false)
        scaleObject('headisbackomg', 0.4, 0.4);
        setLuaSpriteScrollFactor('headisbackomg', 1, 1);
    
        makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);
    
    end
end