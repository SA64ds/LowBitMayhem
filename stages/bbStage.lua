function onCreate()
	-- background shit
	makeAnimatedLuaSprite('smb1stage', 'smb1stage', 138, 46, 'aseprite');
	setScrollFactor('smb1stage', 1, 1);
	scaleObject('smb1stage', 4, 4);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('smb1stage', false);
	setProperty('smb1stage.antialiasing', false)
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
	playAnim("smb1stage", "crowddance0")
end