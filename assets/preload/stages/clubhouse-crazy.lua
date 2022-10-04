allowStartCountdown = false
local xx = 600;
local yy = 470;
local xx2 = 1270;
local yy2 = 540;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

	makeLuaSprite('house', 'Stages/clubhouse', -350, -150);
	addLuaSprite('house',false)
        setLuaSpriteScrollFactor('house', 1, 1);

	makeLuaSprite('head', 'Stages/clubhouse-markus-head', -110, 420);
	addLuaSprite('head',false)
        scaleObject('head', 0.4, 0.4);
        setLuaSpriteScrollFactor('head', 1, 1);

        makeLuaSprite('blackvignette','blackvignette',-31,0)
        setScrollFactor('blackvignette', 0, 0);
        setObjectCamera('blackvignette', 'other');
        scaleObject('blackvignette', 0.999, 0.999);
        addLuaSprite('blackvignette', true);

end

function onUpdate()
  if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ANY') and not allowStartCountdown then
    doTweenAlpha('warning tween', 'warning', 0, 1, linear)
    allowStartCountdown = true
    runTimer('startcount', 1)
  end
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
