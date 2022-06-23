pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
--code principal

function _init()
p={x=60,y=60}
bullets={}
enemies={}
spawn_enemies()
create_clouds()
explosions={}
end

function _update()
 if (btn(➡️)) p.x+=1
 if (btn(⬅️)) p.x-=1
 if (btnp(❎)) shoot()
 update_bullets()
 update_clouds()
 
 
 if #enemies==0 then
 	spawn_enemies()
 end
 
 
 update_enemies()
 update_explosions()
 
end

function _draw()
 cls()
 map(0,0,0,0)
 --smile
 spr(1,p.x,p.y)
 --ennemis
 for e in all(enemies) do
 spr(5, e.x, e.y)
 end
 --bullet
 for b in all(bullets) do
 spr(4,b.x,b.y)
 end
 --clouds
 for c in all(clouds) do
 spr(6,c.x, c.y)
 end
 --explosions
 draw_explosions()
 
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
-->8
--enemies

function spawn_enemies()
	new_enemy={
		x=130,
		y=60,
		life=4
	}
	add(enemies, new_enemy)
end

function update_enemies()
	for e in all(enemies) do
		e.x-=0.3
		if e.x < 0 then
			del(enemies,e)
		end
-- collision
	for b in all(bullets) do
		if collision(e,b) then
			create_explosion(b.x+4,b.y+4)
			del(bullets,b)
			e.life-=1
			if e.life==0 then 
				del(enemies,e)
			end
		end
	end
end
end		
-->8
--collision

function collision(a,b)
	if a.x>b.x+8
	or a.y>b.y+8
	or a.x+8<b.x
	or a.y+8<b.y then
		return false
	else
		return true
	end
end
-->8
--clouds

function create_clouds()
	
	cloud = {}
	cloud = {
		x = 25,
		y = 15,
	}
		
	add(clouds, cloud)
end

function update_clouds()
	for c in all(clouds) do
		c.x+=0.3
		
		if c.x > 128 then
			del(clouds,c)
		end
	end

end
-->8
--explosions

function create_explosion(_x,_y)
	add(explosions, {x=_x,
																		y=_y,
																		timer=0})
																		
end

function update_explosions()
	for e in all(explosions) do
		e.timer += 1
		if e.timer == 13 then
			del(explosions, e)
		end
	end
end

function draw_explosions()
	circ(x,y,rayon, couleur)
	
	for e in all(explosions) do 
		circ(e.x, e.y, e.timer/3,
			8+e.timer%3)
	end
end
__gfx__
00000000ccaaaaccccccccccdddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000caaaaaacccccccccdddddddd000000007000000700000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa0aa0aaccccccccdddddddd000000000550055000777700000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaaccccccccdddddddd000000000050050007777770000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaaccccccccdddddddd00e00e000111111077777777000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa0aa0aaccccccccdddddddd00eeee001117711107777770000000000000000000000000000000000000000000000000000000000000000000000000
00000000caa00aacccccccccdddddddd000ee0000111111000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ccaaaaccccccccccdddddddd000000005550055500000000000000000000000000000000000000000000000000000000000000000000000000000000
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
