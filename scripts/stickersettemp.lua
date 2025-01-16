function onCreate()
    if getModSetting("lbm-sticker-temp") then
        setPropertyFromClass("substates.StickerSubState", "STICKER_SET", "lbm-sticker-set")
        setPropertyFromClass("substates.StickerSubState", "STICKER_PACK", "sa64ds")    
    end
end