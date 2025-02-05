function onCreatePost()
    if getModSetting("lbm-sticker-set")=="Off" and getPropertyFromClass("substates.StickerSubState", "STICKER_SET")=="lbm-sticker-set" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_SET", "stickers-set-1")
    else
        setPropertyFromClass("substates.StickerSubState", "STICKER_SET", "lbm-sticker-set")
    end

    if getModSetting("lbm-sticker-set")=="All" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "all")
    elseif getModSetting("lbm-sticker-set")=="All+" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "alldx")
    elseif getModSetting("lbm-sticker-set")=="Only Modded" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "onlymodded")
    elseif getModSetting("lbm-sticker-set")=="Only Modded+" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "onlymoddeddx")
    elseif getModSetting("lbm-sticker-set")=="SA64" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "sa64ds")
    elseif getModSetting("lbm-sticker-set")=="ShultzNG" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "shultz")
    elseif getModSetting("lbm-sticker-set")=="FrenchOtter" then
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "frenchie")
    end
end