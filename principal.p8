pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
--code principal

function _init()
p={x=10,y=88}

--simple camera
cam_x=0

--bullets={}
end

function _update()
 if (btn(➡️)) p.x+=1
 if (btn(⬅️)) p.x-=1
 
 --simple camera
 cam_x=p.x-64 
 camera(cam_x,0)
 
 
 
  
 --if (btnp(❎)) shoot()
-- update_bullets()
end

function _draw()
 cls()
 map(0,0,0,0)
 --smile
 spr(1,p.x,p.y)
 
 --simple camera
 
 --bullet
-- for b in all(bullets) do
-- spr(4,b.x,b.y)
 --end
end
-->8
--map -- map


-->8
-helloooooo
-->8
--camera
function camera_follow()

cam_x=p.x-60
--cam_y=p.y-60
cam_x=mid(0,cam_x,896)
--cam_y=mid(0,ca_y,128)


end

--hello

__gfx__
000000006eeeee66000000000000000000000000cccccccc0000000000000000a9995554ffffffffccccccccccccccccc5c5c5c5c5c5c5cc6666666666666666
00000000eefffee6000000000000000000000000cccccccc0000000000000000a9999994ffffffffccccccccccc57cccc5555555555555cc6666666666666666
00700700ef0ff0e6000000000000000000000000cccccccc000000000000000059999994ffffffff777ccccccc5777cc667676676767676c6666666666666666
00077000eeffffe6000000000000000000000000cccccccc000000000000000094444444ffffffffccc7ccc7c557777cc5555555555555cc6666666666666666
00077000ee555566000000000000000000000000cccccccc000000000000000094444444ffffffffccccccc757777777c5555555555555cc6666666666666666
0070070066aaaa66000000000000000000000000cccccccc000000000000000094444444ffffffffcccccc7755777777c5555555555555cc6666666666666666
0000000066866866000000000000000000000000cccccccc000000000000000055544440ffffffff77ccccccccccccccc5555555555555cc6666666666666666
0000000066816816000000000000000000000000cccccccc000000000000000044444440ffffffffc77cccccccccccccc5555557555555cc6666666666666666
000000000000000000000000000000000000000066666666666666660000000000000000660660666666666666666666c5555577755555cc6666666666666666
000000000000000000000000000000000000000066666666666666660000000049999999600000067777777766666666c5555777775555cc6666660666600066
000000000000000000000000000000000000000066666666666666660000000044499999003003007000000766666666c5557777777555cc6666606686000006
000000000000000000000000000000000000000066666666666666660000000044944449000000005555555566666666c5557777777555cc6660000000000000
000000000000000000000000000000000000000066666666666666660000000044444455000000000000000066666666c5557777777555cc6000000000000008
000000000000000000000000000000000000000066666666666666660000000049999994060660605555555566666666c5557777777555cc0007770000777000
000000000000000000000000000000000000000066666666666666660000000044444444006666006666666666666666c5557777777555cc0077777007777700
000000000000000000000000000000000000000066666666111111110000000044444444666886666666666666666666c5557777777555cc6667776666777666
000000000000000066666666cccc6666cccccccc7777777755555555000000000000000000000000666666666666666600000000000000000000000000000000
000000000000000066666666cccc6666cccccccc7777777755555555000000000000000000000000666666666666666600000000000000000000000000000000
000000000000000066666666cccc6666cccccccc7777777755555555000000000000000000000000666666666666666600000000000000000000000000000000
000000000000000066666666cccc6666cccccccc7777777755555555000000000000000000000000666677777766666600000000000000000000000000000000
00000000000000006666a666cccc6666c6c6c6c67777777755555555000000000000000000000000666770000077666600000000000000000000000000000000
000000000000000066666666cccc6666666666667777777755555555000000000000000000000000667005555550776600000000000000000000000000000000
000000000000000066666666cccc6666666666667777777755555555000000000000000000000000770555555555507600000000000000000000000000000000
000000000000000066666666cccc6666666666667777777755555555000000000000000000000000005555555555550000000000000000000000000000000000
00000000000000000000000055555555111111111155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055555555111111111155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055555555111111111155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055555aa5111111111155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055555555111111111155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000055555555115555551155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000005aa55555115555551155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000005aa55555115555551155555511111111000000000000000000000000000000000000000000000000000000000000000000000000
ccccccccc6666666cc6cccccccccccccccccccccccccccccccccccccccccccccccc6666661c1c1c1c1c1c166666ccccccccccccccc2222222222cccccccccccc
ccccccccc6666666cc6cccccccccccccccccccccccccccccccccccccccccccccccc66666166cc666666c6616666cccccccccccccc222222222222ccccccccccc
ccccccccc6666666cc6666ccccccccccccccccccccccccccccccccccccccccccccc66666616cc666666c6166666ccccccccccccc22288888888222cccccccccc
ccccccccc6666666cc666666ccccccccccccccccccccccccccccccccccccccccccc66666161c161616161616666cccccccccccc2228888888888222ccccccccc
ccccccc666666666cc666666ccccccccccccccccccccccccccccccccccccccccccc66616666cc66666666666166ccccccccccc222888eeeeee888222cccccccc
ccccccc666666666cc666666ccccccccccccccccccccccccccccccccccccccccccc66666666cc66666666666666ccccccccccc22888e999999e88822cccccccc
ccccccc666666666cc666666ccccccccccccccccccccccccccccccccccccccccccc66166666cc66666666666616ccccccccccc2288e9a8888a9e8822cccccccc
ccccccc666666666cc666666cccccccccccccccccccccccc8cccccccccccccccccc66666666cc6666666666666666666cccccc2288e98aaaa89e8822cccccccc
ccccccc66666661111166666cccccccccccccccccccccccc1cccccccccccccccccc66166666cc6666666666661666666cccccc2288e98abba89e8822cccccccc
ccccccc66666661111166666cccccccccccccccccccccccc1cccccccccccccccccc66666666cc6666666666666666666cccccc2288e98abba89e8822cccccccc
ccccccc66666661111166666cccccccccccccccccccccccc4cccccccccccccccccc66166666cc6666666666661666666cccccc2288e98aaaa89e8822cccccccc
ccccc666666661111111666666ccccccccccccccccccccc444ccccccccccccccccc66616666666666666666616666666cccccc2288e9a8888a9e8822cccccccc
ccc66666666661111111666666cccccccccccccccccccc44444ccccccccccccccc666161616161616161616161666666cccccc22888e988889e88822cccccccc
cc666666666661111111666666cccccccccccccccccccc44444ccccccccccccccc666616161616161616161616666666cccccc222888e9999e888222cccccccc
cc666666666611111111166666ccccccccccccccccccccc444cccccccccccccccc666161616161616161616161666666ccccccc222888eeee888222ccccccccc
cc66666666661111111116666666666cccccccccccccccc111cccccccccccccccc666616161616161616161616666666cccccccc222888888882222ccccccccc
6666666666661111111116666666666cccccccccccccccc111cccccccccccccccc666161616161616161616161666666ccccccccc222888888222ccccccccccc
6666666666111111111111166666666cccccccccccccccc111cccccccccccccccc666616161616161616161616666666cccccccccc2228888222cccccccccccc
7666666666444444444444466666666cccccccccccccccc111cccccccccccccccc666161666161616161666161666666ccccccccccc22222222ccccccccccccc
6666666666611111111111666666666cccccccccccccccc111cccccccccccccccc666616666616161616666616666666ccccccccccc22222222ccccccccccccc
6666666666611111111111666666666cccccccccccccccc111ccccccccccccccc6666161666161616161666161666666cccccccccccccc55cccccccccccccccc
6666666666111111111111166666666cccccccccccccccc111ccccccccccccccc6666616161616161616161616666666cccccccccccccc55cccccccccccccccc
666666666611111cc61111166666666cccccccccccccccc111ccccccccccccccc6666661616161616161616166666666cccccccccccccc55cccccccccccccccc
666666666111116cc66111116666666ccccccccccccccc11111cccccccccccccc6666666661116666611166666666666ccccccccccc474444474cccccccccccc
666666666111166cc66611116666666ccccccccccc666644444ccccccccccccc66666666611166666661116666666666ccccccccccc474444474cccccccccccc
666666661111666cc66661111666666ccccccccccc666611111ccccccccccccc66666666111666666666111666666666ccccccccccc474444474cccccccccccc
666666661111666cc66661111666666ccccccccccc666611111ccccccccccccc66666111116161616161611111166666ccccccccccc474444474cccccccccccc
6666666111166666666666111166666ccccccccccc666611111ccccccccccccc66666611166666666666661116666666ccccccccccc474444474cccccccccccc
6666661111166666666666111116666cccccccc666666611111ccccccccccccc66661111616161616161616111166666cccccccccccccccccccccccccccccccc
66666444444466666666644444446666ccccccc666666611111ccccccccccccc66661116666666666666666611166666cccccccccccccccccccccccccccccccc
61111444444466666666644444441116ccccccc6666661111111cccccccccccc61116666666666666666666666611116cccccccccccccccccccccccccccccccc
16666666666666666666666666666661ccccccc6666664444444cccccccccccc16666666666666666666666666666661cccccccccccccccccccccccccccccccc
111111111111111111111111111111116666666666666611666666666666666666666666666666666666666666666666ccccccccccccccc666666ccccccccccc
166666666666666666666666666666616666666666666611666666666666666666666666666666666666666666666666ccccccccccccccc666666ccccccccccc
111111111111111111111111111111116666666666666166166666666666666666666666666666666666666666666666ccccccccccccccc666666ccccccccccc
616611666611666611666116661166166666666666666111166666666666666666666666666666666666666666666666cccccccccccccc6666666ccccccccccc
616611666611666611666116661166166666666666666111166666666666666666666666666666666666666666666666ccccccc66666666666666ccccccccccc
111111111111111111111111111111116666666666666111166666666666666666666666666666666666666666666666ccccccc66666666666666ccccccccccc
166666666666666666666666666666616666666666666111166666666666666666666666666666666666666666666666ccccccc66666666666666ccccccccccc
111111111111111111111111111111116666666666666111166666666666666666666666666666666666666666666666ccccccc66666666666666ccccccccccc
616666666666666666666666666666166666666666666111166666666666666666666666666666666666666666666666ccccccc66666666666666ccccccccccc
616666666666666666666666666666166666666666666111166666666666666666666666666666666666666666666666ccccccc666666666666666cccccccccc
616666666666666666666666661116166666666666666111166666666666666666666666666666666666666666666666ccccccc666666666666666cccccccccc
616111666666611111166666661116166666666666666111166666666666666666666666666666666666666666666666ccccccc666666666666666cccccccccc
616111666666111661116666661116166666666666666111166666666666666666666666666666666666666666666666ccccccc6666666166666666666666666
616111666661166666611666666666166666666666666111166666666666666666666666666666666666666666666666ccccccc6666661116666666666666666
616666666611666666661166666666166666666666666111166666666666666666666666666666666666666666666666ccccccc6666611611666666666666666
616666666116666666666116666666166666666666666111166666666666666668888888888888888888888888888866ccccccc6666111111166666666666666
616666666166666666666616666666166666666666666111166666666666666688666666666666666666666666666886ccccccc6661111661116666666666666
111111111166666666666611111111116666666666666111166666666666666686666666666666666166666666666686ccccccc6611611111111666666666666
166666661666666666666661666666616666666666611111111666666666666686666666666666666166666666666686ccccccc6111661616611166666666666
111111111666666666666661111111116666666666166666666166666666666686666666666666666166666666666686ccccccc1116616161611116666666666
616666616666666666666666166666166666666666611111111666666666666686666666666666666166666666666686cccccc11666161616166111666666666
616666616666666666666666166666166666666666611111111666666666666686666666666666666166666666666686666cc11c661616161616611166666666
6166666166666666666666661666661666666666666111111116666666666666866611166666661116666666111666866666116c616161616161661116666666
6166166166666666666666661661661666666666666111111116666666666666866166616666616661666661666166866661166c161616161616166111666666
61611161666666666666666616111616666666666661111111166666666666668661666166666166616666616661668666116661616161616161616611166666
61611161666666666666666616111616666666666661111111166666666666668661666166666166616666616661668661166616161616161616161661116666
61611161666666666666666616111616666666666661111111166666666666668666111116666611166666661111168611666161616161616161616166111666
61611161666666666666666616111616666666666661111111166666666666668666666666666666666666666666668666661616161111111111666616611166
61666661666666666666666616666616666666666661111111166666666666668866666666666666666666666666688616616161611166666611116166161116
11111111166666666666666111111111666666666661111111166666666666666888888888888888888888888888886616161616111666666666111611666111
16666661166666666666666116666661666666666611111111116666666666666666666666666666666666666666666661616166116666666666661116161611
11111111166666666666666111111111666666666111111111111666666666666666666666666666666666666666666616161611166666666666666111616161
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
666ccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
00000000000000000f0000000000000000002020000000000300000000000000000020200000000000000000000000000000000000000000000000000000000000202000000000000000000000000000002020000000000000000000000000000000000000000000000000000000000020200000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0505050505050505050505050505050505050505050505050505050505050505050505050505050505050505053636363636363636363636363636363636360000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050505054c4d4e4f050b05050505050505050505050b05054c4d4e4f05050505050505050505050505050505053636363636363636363636363636363636360000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050505055c5d5e5f050505050505050505050505050505055c5d5e5f0505050b050505050505050505050505053636363636363636363636363636363636360000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
050505056c6d6e6f0505050505050b0505050505050505056c6d6e6f05050505050505050505050505050505053636363636363636363636363636363636360000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
444546477c7d7e7f054445054705050505050505050505057c7d7e7f05050505050505050505050505050505053636363636363636363636363636363636360000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5455565705050505055405055724050515050505050505050505050505050515150515151515151515151515153526342626363326332626262636332626260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6465666705240524056405056715050515050505050515150505050505051515158415848586871515151515153326332626362626352626333336262633260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
74757677c0151515c048494a4b1589238788238c8d8e8f158788898a80818283159415949596971515151515153526353333362626352626262636263326260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
50515253c01515151558595a5b1515239715239c9d9e9f15971515159091929315a415a4a5a6a7151598999a9b2626352626362626352633262636262626330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
60616263151515151568696a6b151515151523acadaeaf15a7151515a0a1a2a315b416b4b5b6161516a8a9aaab2626262626262626352626262636262626330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
70717273161616161678797a7b161616161616bcbdbebf16b7151516b0b1b2b3161615151515151515b8b9babb2626262626262626262626262626262626260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
15151515150815151515151515151515151515151515152a1a1a2b1515151515151515151515151515151515152626262626262626262626262626262626260000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
18181818181818181818181818181818181818181818180a0a0a0a1818181818181818181818181818181818181818181818181818181818181818181818180000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080806060606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0808080808080808080808080808080808080808080808080303030303030303030303030303030303030303030303030303030303030303030303030303030606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
