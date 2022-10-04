function onEvent(n,v1,v2)
	if n == "Black Screen" then
		if not lowQuality then
			makeLuaSprite('black','Stages/black',-90,-90)
			setScrollFactor('black', 0, 0);
		        setObjectCamera('black', 'other');
			scaleObject('black', 0.8, 0.8);
			addLuaSprite('black', true);
		end
	end
end

