function onEvent(name,value1,value2)
	if name == 'Slow Zoom' then
		doTweenZoom('camera', 'camGame', tonumber(value1), tonumber(value2), 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end
