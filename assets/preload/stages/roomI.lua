function onCreate()
    makeLuaSprite('1room','room/1room', -400, -150);
    setScrollFactor('1room', 0.9, 0.9);

    makeLuaSprite('1drawer','room/1drawer', 1800, 800);
    setScrollFactor('1drawer', 1.1, 1.1);
    
    makeLuaSprite('1tabel','room/1tabel', -200, 1000);
    setScrollFactor('1tabel', 1.1, 1.1);
    
    makeLuaSprite('1bg','room/1bg', 1350, -100);
    setScrollFactor('1bg', 0.8, 0.8);

	addLuaSprite('1bg', false);
	addLuaSprite('1room', false);
	addLuaSprite('1tabel', true);
	addLuaSprite('1drawer', true);
end