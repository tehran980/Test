do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = "user#id"..119256329
  if msg.to.type == 'chat' then
    chat_add_user(chat, user, callback, false)
  else 
    return 'Only work in group'
  end

end

return {
  description = "Invite X Y Z C B Robots", 
  usage = {
    "/zac : invite x y z c b bots", 
	},
  patterns = {
    "^[!/]jack$"
  }, 
  run = run,
  privileged = true
}

end
