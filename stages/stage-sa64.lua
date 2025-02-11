function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stages/fnfstage/stageback', -435, -330);
	setScrollFactor('stageback', 0.9, 0.9);
	scaleObject('stagelight_left', 1.3, 1.3);
	
	makeLuaSprite('stagefront', 'stages/fnfstage/stagefront', -435, -340);
	scaleObject('stagefront', 1.4, 1.4);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelights', 'stages/fnfstage/stage_light', -435, -315);
		setScrollFactor('stagelights', 0.9, 0.9);

		makeLuaSprite('stagecurtains', 'stages/fnfstage/stagecurtains', -515, -350);
		setScrollFactor('stagecurtains', 1.1, 1.1);
		scaleObject('stagecurtains', 1.1, 1.1);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelights', false);
	addLuaSprite('stagecurtains', false);
	
	setProperty("game.camZooming", true)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end