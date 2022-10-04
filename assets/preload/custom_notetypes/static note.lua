function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'static note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.3');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	makeAnimatedLuaSprite('hit', 'hitStatic', 0, 0);
	addAnimationByPrefix('hit', 'staticANIMATION', 'h', 24, false);
	setObjectCamera('hit', 'other');
	setProperty('hit.visible', false)
	addLuaSprite('hit', true);
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'static note' then
		setProperty('hit.visible', true)
		playSound('hitStatic1', 1);
		objectPlayAnimation('hit', 'h', false);
		runTimer('hide', 1, 0)
    end
end

function onTimerCompleted(tag)
	if tag == 'hide' then
		setProperty('hit.visible', false);
	end
end