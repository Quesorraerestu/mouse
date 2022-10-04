local xx = 600;
local yy = 470;
local xx2 = 1270;
local yy2 = 540;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

	makeLuaSprite('out', 'Stages/dog', -350, -150);
	addLuaSprite('out',false)
        setLuaSpriteScrollFactor('out', 1, 1);

        makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);

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

makeLuaSprite('Start', 'loading/doggydogus', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onUpdate()
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

	