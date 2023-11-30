--[[ ZS 2.4 lightning system by BcY ]]--
local play, t = parse, timer

addhook("startround","round")
function round()
	play("sv_sound zombie_swarm2.4/3dmstart.wav")
end
round()
		
function thunder()
	play("sv_sound env/thunder.wav")
	t(500,"parse",'sv_daylighttime 185')
	t(500,"parse",'flashplayer 0 40')
	t(1500,"parse",'sv_daylighttime 21')
end

t(15000,"thunder","",0)
		
function sound()
	play("sv_sound zombie_swarm2.4/ambience.ogg")
	t(17000,"sound")
end
sound()
