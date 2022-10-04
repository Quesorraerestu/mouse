allowStartCountdown = false
local xx = 600;
local yy = 570;
local xx2 = 1270;
local yy2 = 640;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

        makeAnimatedLuaSprite('Run','stages/BackgroundLeft', -350, -150)
        addAnimationByPrefix('Run','Runpog','Background2 Moving2',29,true)
        objectPlayAnimation('Run','Runpog',false)
        setScrollFactor('Run', 1, 1);
        scaleObject('Run', 1.9, 1.9);
        addLuaSprite('Run', false);

        makeLuaSprite('shadow','stages/alley-shadow',-350,-150)
        setScrollFactor('shadow', 1, 1);
        setObjectCamera('shadow', 'camgame');
        addLuaSprite('shadow', true);

        makeAnimatedLuaSprite('stat','daSTAT2',-90,-90)
        addAnimationByPrefix('stat','statpog','staticFLASH',40,true)
        objectPlayAnimation('stat','statpog',false)
        setScrollFactor('stat', 1, 1);
        setObjectCamera('stat', 'other');
        scaleObject('stat', 4, 4);
        addLuaSprite('stat', true);

        makeAnimatedLuaSprite('SMpantallaload','SMpantalla',-90,-90)
        addAnimationByPrefix('SMpantallaload','SMpantallapog','pantalla',47,true)
        objectPlayAnimation('SMpantallaload','SMpantallapog',false)
        setScrollFactor('SMpantallaload', 0, 0);
        setObjectCamera('SMpantallaload', 'other');
        scaleObject('SMpantallaload', 0.8, 0.8);
        addLuaSprite('SMpantallaload', true);

makeLuaSprite('Start', 'loading/alley', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onUpdate()
if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/9000)*(curBpm/10)

doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'Laugh' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 2, 'quintOut');
 
end

	