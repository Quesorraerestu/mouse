function onCreate()
	
	makeLuaSprite('alley', 'Stages/Alley', -350, -150);
	addLuaSprite('alley',false)
        setLuaSpriteScrollFactor('alley', 1, 1);

        makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);
end
	