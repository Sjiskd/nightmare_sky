function opponentNoteHit(id, direction, noteType, isSustainNote)  

    cameraShake('game', 0.01, 0.06)
    cameraShake('hud', 0.01, 0.009)
        health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end

end

function goodNoteHit(id, direction, noteType, isSustainNote)  

    cameraShake('game', 0.01, 0.06)
    cameraShake('hud', 0.01, 0.008)

end

function onCreatePost()
    triggerEvent('Set GF Speed','8','')
end