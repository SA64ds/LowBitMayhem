function onCreate()

	makeLuaSprite('ToadFloor', 'stages/toad/ToadFloor', -800, 400);
	setScrollFactor('ToadFloor', 1, 1);

	makeAnimatedLuaSprite('ToadFG', 'stages/toad/ToadFG', -500, 550)addAnimationByPrefix('ToadFG', 'dance', 'fg boppers', 24, true)
	objectPlayAnimation('ToadFG','dance',false)
	setScrollFactor('ToadFG', 1, 1);

	makeAnimatedLuaSprite('ToadEep', 'stages/toad/ToadEep', 1300, 250)addAnimationByPrefix('ToadEep', 'dance', 'eepy', 24, true)
	objectPlayAnimation('ToadEep','dance',false)
	setScrollFactor('ToadEep', 1, 1);

	makeAnimatedLuaSprite('ToadNerd', 'stages/toad/ToadNerd', -650, 250)addAnimationByPrefix('ToadNerd', 'dance', 'nerdbop', 24, true)
	objectPlayAnimation('ToadNerd','dance',false)
	setScrollFactor('ToadNerd', 1, 1);

		makeLuaSprite('bfShadow', 'DropShadow', 650, 545);
		setScrollFactor('bfShadow', 1, 1);
		setProperty('bfShadow.visible', false)
		setProperty('bfShadow.alpha', 0.3)

		makeLuaSprite('dadShadow', 'DropShadow', -160, 545);
		setScrollFactor('dadShadow', 1, 1);
		setProperty('dadShadow.visible', false)
		setProperty('dadShadow.alpha', 0.3)

		makeLuaSprite('nerdShadow', 'DropShadow', -630, 565);
		setScrollFactor('nerdShadow', 1, 1);
		scaleObject('nerdShadow', 0.75, 1.55);
		setProperty('nerdShadow.visible', false)
		setProperty('nerdShadow.alpha', 0.3)

		makeLuaSprite('eepShadow', 'DropShadow', 1250, 555);
		setScrollFactor('eepShadow', 1, 1);
		scaleObject('eepShadow', 0.75, 1.45);
		setProperty('eepShadow.visible', false)
		setProperty('eepShadow.alpha', 0.3)

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		setProperty('bfShadow.visible', true)
		setProperty('dadShadow.visible', true)
		setProperty('nerdShadow.visible', true)
		setProperty('eepShadow.visible', true)

	end

	if getPropertyFromClass('ClientPrefs', 'shaders') == true then

	makeLuaSprite('ToadOVL', 'stages/toad/ToadOVL', -1150, -700);
	setScrollFactor('ToadOVL', 1, 1);
	setBlendMode("ToadOVL", "add")

	makeLuaSprite('ToadCloudGlow', 'stages/toad/ToadCloudGlow', -1150, 100);
	setScrollFactor('ToadCloudGlow', 1, 1);
	setBlendMode("ToadCloudGlow", "add")

	end
	
	addLuaSprite('ToadFG', true);
	addLuaSprite('ToadOVL', true);
	addLuaSprite('ToadCloudGlow', false);
	addLuaSprite('ToadFloor', false);
	addLuaSprite('bfShadow', false);
	addLuaSprite('dadShadow', false);
	addLuaSprite('nerdShadow', false);
	addLuaSprite('eepShadow', false);
	addLuaSprite('ToadNerd', false);
	addLuaSprite('ToadEep', false);

end

function onBeatHit()
	addAnimationByPrefix('ToadEep', 'dance', 'eepy', 24, true)
	objectPlayAnimation('ToadEep','dance',false)
	addAnimationByPrefix('ToadFG', 'dance', 'fg boppers', 24, true)
	objectPlayAnimation('ToadFG','dance',false)
	addAnimationByPrefix('ToadNerd', 'dance', 'nerdbop', 24, true)
	objectPlayAnimation('ToadNerd','dance',false)
end

function onCreatePost()
	setObjectOrder('gfGroup', getObjectOrder('dadGroup') - 5)
end
