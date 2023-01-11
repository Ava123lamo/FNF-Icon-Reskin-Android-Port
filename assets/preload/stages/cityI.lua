function onCreate()
    makeLuaSprite('3sky','city/3sky',0, 0);
    setScrollFactor('3sky', 0.75, 0.75);

    makeLuaSprite('3buildings','city/3buildings',-20,200);
    setScrollFactor('3buildings', 0.8, 0.8);

    makeLuaSprite('3buildinglights','city/3buildinglights',30,250);
    setScrollFactor('3buildinglights', 0.8, 0.8);
    setProperty ('3buildinglights.color', getColorFromHex('FFF295'));

    makeLuaSprite('3lamppost','city/3lamppost',100,300);
    setScrollFactor('3lamppost', 0.85, 0.85);
    scaleObject('3lamppost',0.75, 0.75);

    makeLuaSprite('3window','city/3window',700,250);
    setScrollFactor('3window', 0.875, 0.875);

    makeLuaSprite('3windowlight','city/3windowlight',820,430);
    setScrollFactor('3windowlight', 0.875, 0.875);
    setProperty ('3windowlight.color', getColorFromHex('FFF295'));

    makeLuaSprite('3floor','city/3floor',10,100);
    setScrollFactor('3floor', 0.9, 0.9);

    addLuaSprite('3sky', false);
    addLuaSprite('3buildings', false);
    addLuaSprite('3buildinglights', false);
    addLuaSprite('3lamppost', false);
    addLuaSprite('3window', false);
    addLuaSprite('3windowlight', false);
    addLuaSprite('3floor', false);

    PhillyLightsColor = { '31A2FD', '31FD8C', 'FB33F5', 'FD4531', 'FBA633'};
end

function onBeatHit()
    if (curBeat % 4 == 0) then
        NewColor = math.random(1,5);
        setProperty ('3windowlight.color', getColorFromHex(PhillyLightsColor[NewColor]));
        setProperty ('3buildinglights.color', getColorFromHex(PhillyLightsColor[NewColor]));
        doTweenColor('buildingcolortween', '3buildinglights', '1C233C', 1.5, 'cubeIn');
        doTweenColor('windowcolortween', '3windowlight', '000000', 1.5, 'cubeIn');
    end
end    

function onSongStart()
    doTweenColor('buildingcolortween', '3buildinglights', '1C233C', 1.5, 'cubeIn');
    doTweenColor('windowcolortween', '3windowlight', '000000', 1.5, 'cubeIn');
end