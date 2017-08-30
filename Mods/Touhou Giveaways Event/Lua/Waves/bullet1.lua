spawntimer = 0
bullets = {}
startTime = Time.time
Encounter.SetVar("wavetimer", 21.0)

function Update()
	Arena.Resize(300, 150)
	t = Time.time - startTime
	if (t < 17) then
		spawntimer = spawntimer + 1
	end
	if spawntimer == 50 then
		local posx = math.random(-200, 200)
		local posy = math.random(-200, 200)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 0)
        bullet.SetVar('vely', 4)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 1)
        bullet.SetVar('vely', 3)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 2)
        bullet.SetVar('vely', 2)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 3)
        bullet.SetVar('vely', 1)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 4)
        bullet.SetVar('vely', 0)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 3)
        bullet.SetVar('vely', -1)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 2)
        bullet.SetVar('vely', -2)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 1)
        bullet.SetVar('vely', -3)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', 0)
        bullet.SetVar('vely', -4)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -1)
        bullet.SetVar('vely', -3)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -2)
        bullet.SetVar('vely', -2)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -3)
        bullet.SetVar('vely', -1)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -4)
        bullet.SetVar('vely', 0)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -3)
        bullet.SetVar('vely', 1)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -2)
        bullet.SetVar('vely', 2)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
		local bullet = CreateProjectile('bullet', posx, posy)
        bullet.SetVar('velx', -1)
        bullet.SetVar('vely', 3)
		bullet.SetVar('creation', Time.time)
		table.insert(bullets, bullet)
	end
	for i=1,#bullets do
		local bullet = bullets[i]
		if Time.time >= bullet.GetVar('creation') + 0.6 then
			local velx = bullet.GetVar('velx')
			local vely = bullet.GetVar('vely')
			local newposx = bullet.x + velx
			local newposy = bullet.y + vely
			bullet.MoveTo(newposx, newposy)
		end
	end
	if spawntimer == 50 then
    	spawntimer = 0
    end
end

function OnHit(bullet)
	Player.Hurt(2*(GetGlobal("INSULT")+1))
end