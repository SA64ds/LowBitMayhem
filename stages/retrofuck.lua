function onCreate()
	-- background shit
	makeLuaSprite('retrosky', 'retrosky', -1200, -300);
	setScrollFactor('retrosky', 0.3, 0.3);
	scaleObject("retrosky", 2,2, 2,2)
	
	makeLuaSprite('retroground', 'retroground', -1200, 130);
	setScrollFactor('retroground', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('retroclouds', 'retroclouds', -1020, -500);
		setScrollFactor('retroclouds', 0.7, 0.7);
		
		makeLuaSprite('retrobush', 'retrobush', -1200, 10);
		setScrollFactor('retrobush', 0.9, 0.9);

		makeLuaSprite('retropipe', 'retropipe', 800, -245);
		setScrollFactor('retropipe', 0.9, 0.9);
	end

	addLuaSprite('retrosky', false);
	addLuaSprite('retroclouds', false);
	addLuaSprite('retroground', false);
	addLuaSprite('retrobush', false);
	addLuaSprite('retropipe', false);
end

function onCreatePost()
    setProperty("healthBar.visible", false)
	setProperty("healthBarBG.visible", false)
	setProperty("iconP1.visible", false)
	setProperty("iconP2.visible", false)
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
end

-- Yes, I remade an entire stage in LUA just for a joke, I love my life :)