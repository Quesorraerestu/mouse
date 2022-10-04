function onEvent(name, value1, value2)
   if name == 'BG Still' then
    makeLuaSprite('Background', 'bg/BackgroundRight', -350, -150);
    setScrollFactor('Background', 1, 1);
    scaleObject('Background', 2, 2);
    addLuaSprite('Background',false)
    
    
    
    end
end