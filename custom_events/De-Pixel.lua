function onEvent(name,value1,value2)
    if name == "De-Pixel" then
        triggerEvent('Camera Follow Pos', '', '')

        setTextFont('scoreTxt', 'vcr.ttf')
        setTextSize('scoreTxt', '20')
        setTextFont('timeTxt', 'vcr.ttf')
        setTextSize('timeTxt', '33')
        setPropertyFromClass("PlayState", "isPixelStage", false)

        if not getModSetting("changehbc") then
            if getModSetting("smb1hbc")=="B&W" then
                setHealthBarColors('black', 'white')
            end
            if getModSetting("smb1hbc")=="V-Slice" then
                setHealthBarColors('red', 'lime')
            end
            if getModSetting("smb1hbc")=="V-Slice NES" then
                setHealthBarColors('#b21030', '#71f341')
            end
            if getModSetting("smb1hbc")=="SA64" then
                setHealthBarColors('#2800ba', '#b21030')
            end
        end
    end
end