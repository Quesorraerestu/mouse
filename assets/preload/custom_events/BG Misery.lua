function onEvent(name, value1, value2)
   if name == 'BG Misery' then
        makeAnimatedLuaSprite('Run','stages/BackgroundLeft', -350, -150)
        addAnimationByPrefix('Run','Running','Background2 Moving',35,true)
        objectPlayAnimation('Run','Running',false)
        setScrollFactor('Run', 1, 1);
        scaleObject('Run', 2, 2);
        addLuaSprite('Run', false);
    function opponentNoteHit(id, noteData, noteType, isSustainNote)
    triggerEvent('Screen Shake', '0, 0', '0, 0');
end
    end
end