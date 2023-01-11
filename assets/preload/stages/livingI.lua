function onCreate()
    makeAnimatedLuaSprite('2bg','living/2bg',0,0);
    setScrollFactor('2bg', 0.85, 0.85);
    addAnimationByPrefix('2bg', 'idle','bg0', 24, true);
    addAnimationByPrefix('2bg', 'lightling','bgcool', 24, false);
    playAnim('2bg', 'idle');
    addLuaSprite('2bg', false);

    makeAnimatedLuaSprite('2tv','living/2tv',800,1000);
    setScrollFactor('2tv', 1.1, 1.1);
    addAnimationByPrefix('2tv', 'idle','tvidle', 24, true);
    addAnimationByPrefix('2tv', 'lightling','tvlighting', 24, false);
    playAnim('2tv', 'idle');
    addLuaSprite('2tv', true);

    lightningStrikeBeat = 0
    lightningOffset = 8
end

function LightningIDK()
    playSound("thunder" .. math.random(1, 2) ,1)
    playAnim('2bg', 'lightling');
    playAnim('2tv', 'lightling');

    lightningStrikeBeat = curBeat
    lightningOffset = math.random(8, 24)

    playAnim('boyfriend', "scared", true)
    playAnim('gf', "scared", true)
end

function onBeatHit()
    if math.random(10) == 10 and curBeat > lightningStrikeBeat + lightningOffset  then
        LightningIDK()
    end
end