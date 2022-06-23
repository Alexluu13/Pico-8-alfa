pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
--code principal

function _init()
p={x=60,y=60}
bullets={}
end

function _update()
 if (btn(➡️)) p.x+=1
 if (btn(⬅️)) p.x-=1
 if (btnp(❎)) shoot()
 update_bullets()
end

function _draw()
 cls()
 map(0,0,0,0)
 --smile
 spr(1,p.x,p.y)
 --bullet
 for b in all(bullets) do
 spr(4,b.x,b.y)
 end
end
-->8
--bullets

function shoot()
 new_bullet={
 x=p.x,
 y=p.y,
 speed=4
 }
 add(bullets,new_bullet)
 sfx(0)
end

function update_bullets()
 for b in all(bullets) do
  b.x+=b.speed
 end
end 
__gfx__
00000000ccaaaaccccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000caaaaaacccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa0aa0aaccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaaccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaaccccccccdddddddd00e00e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa0aa0aaccccccccdddddddd00eeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000caa00aacccccccccdddddddd000ee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccaaaaccccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010000000002d0503005030050300503105015050100500e0500c05008050060500405002050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000