local event = require"event"
local os = require"os"
local term = require"term"
local shell = require"shell"
local seri = require"serialization"
local fs = require"filesystem"


local args, opt = shell.parse(...)

--default vars changeable via options
local dPort = 1
local dgPath = "/home/gates/"

--change port
local cPort = nil
local cPath = nil


if #args > 0 and #args < 2 then

  if args[1] == "start" then
    if opt["port"] ~= nil then
      cPort = opt["port"]
    end
    if opt["gPath"] ~= nil then
      cPath = opt["gPath"]
    end
    print("Stargate-Control Server started")
    print("Port: "..cPort)
    print("Gate list path:"..cPath)
  elseif args[1] == "stop" then
    print("Stargate-Control Server stoped")
    print("Port "..cPort.." closed")
  elseif args[1] == "help" or args[1] == "?" then
    print("Use man sg-c-s to see the ingame manual or visit http://www.theuton.de/berico")
  end

end


local function start(port,gPath)

  if port == nil then
    port = dPort
  end
  if gPath == nil then
    gPath = dgPath
  end

  event.listen("modem_message", reqHandler)

end

local function reqHandler(_,from, _, _, type, user, pw, data)

  if type == "info" then

  elseif type == ""

  end

end
