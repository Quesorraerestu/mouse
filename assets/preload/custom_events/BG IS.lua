function onEvent(name, value1, value2)
   if name == 'BG IS' then
        makeAnimatedLuaSprite('Run','stages/BackgroundRight', -350, -150)
        addAnimationByPrefix('Run','Running','Background Moving',45,true)
        objectPlayAnimation('Run','Running',false)
        setScrollFactor('Run', 1, 1);
        scaleObject('Run', 2, 2);
        addLuaSprite('Run', false);
    function opponentNoteHit(id, noteData, noteType, isSustainNote)
    triggerEvent('Screen Shake', '0.09, 0.02', '0.09, 0.02');
end
    end
end