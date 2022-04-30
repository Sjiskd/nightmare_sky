--SCRIPT BY Kevin Kuntz#7641


function onCreate()
	if dadName == 'nightmare_sky' then
	makeAnimatedLuaSprite('animatedicon', 'icons/nightmare_sky', getProperty('iconP2.x'), getProperty('iconP2.y'))
	addAnimationByPrefix('animatedicon', 'normal', 'a1', 24, true)
	addAnimationByPrefix('animatedicon', 'losing', 'a2', 24, true)
	setObjectCamera('animatedicon', 'hud')
	setObjectOrder('animatedicon', 6)
	end
end

function onUpdate(elapsed)
	if dadName == 'nightmare_sky' then
		addLuaSprite('animatedicon', true)
		setObjectOrder('healthBarBG', 1)
		setObjectOrder('healthBar', 2)
		setObjectOrder('iconP1', 3)
		setProperty('iconP2.visible', false)
			if getProperty('health') > 1.6 then
				objectPlayAnimation('animatedicon', 'normal', false)
			else
				objectPlayAnimation('animatedicon', 'normal', false)
			end
		setProperty('animatedicon.x', getProperty('iconP2.x'))
		setProperty('animatedicon.angle', getProperty('iconP2.angle'))
		setProperty('animatedicon.y', getProperty('iconP2.y')-70)
		setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
		setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
	else
		setProperty('iconP2.visible', true)
		removeLuaSprite('animatedicon', false)
	end
end