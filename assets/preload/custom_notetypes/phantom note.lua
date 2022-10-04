function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'phantom note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PhantomNote');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.4');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end