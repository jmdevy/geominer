_geo = {}     -- global table creation
_geo.v = {}   -- variables used by mods
_geo.f = {}   -- quasiglobal functions
_geo.p = {}   -- mod paths for global access
_geo.c = {}   -- configuration (defaults read from settingtypes.txt files)


--For more info on how this works vist: https://forum.minetest.net/viewtopic.php?f=47&t=18176


first_layer_start = 0
layer_width = 0
underground_event_chance = 800
underground_event_check_time = 120

--Global settings that will be accessed by other scripts
--Sadly I define these as bool, but they turn into strings and converting
--them is too much work for little gain
stone_layers = true
dungeon_saplings = true
underground_events = true
gas_spawn = true
spawn_glow_crystals = true
drop_glow_entities = true
cavein_event = true
flash_flood_event = true
hell = true
spawn_hell_blowers = true

--Layer #1 is the first layer of hardstone
_geo.min = function (layer_num)
  return first_layer_start - (layer_width * (layer_num))
end

_geo.max = function (layer_num)
  return first_layer_start - (layer_width * (layer_num - 1))
end



-- @return void
_geo.i = function ()
  
  
    local name = minetest.get_current_modname()
    local path = minetest.get_modpath(name)
    local filename = path..DIR_DELIM..'settingtypes.txt'
    local file = io.open(filename, 'rb')

    if file ~= nil then
        local lines = {}
        for line in file:lines() do
            if line:match("^([a-zA-Z])") then
                local name = line:gsub(' .+', '')
                local value = line:gsub('^[^ ]+ %b() %a+ ', '')
                _geo.c[name] = value
            end
        end
    end

    _geo.v[name] = {}
    _geo.f[name] = {}
    _geo.p[name] = path..DIR_DELIM
    
    
    first_layer_start = tonumber(_geo.g("first_layer_start", false))
    layer_width = tonumber(_geo.g("layer_width", false))
    underground_event_chance = tonumber(_geo.g("underground_event_chance", false))
    underground_event_check_time = tonumber(_geo.g("underground_event_check_time", false))
    
    stone_layers = _geo.g("stone_layers", false)
    dungeon_saplings = _geo.g("dungeon_saplings", false)
    underground_events = _geo.g("underground_events", false)
    gas_spawn = _geo.g("gas_spawn", false)
    spawn_glow_crystals = _geo.g("spawn_glow_crystals", false)
    drop_glow_entities = _geo.g("drop_glow_entities", false)
    cavein_event = _geo.g("cavein_event", false)
    flash_flood_event = _geo.g("flash_flood_event", false)
    hell = _geo.g("hell", false)
    spawn_hell_blowers = _geo.g("spawn_hell_blowers", false)
end





--- Get a configuration or default value.
--
-- Because Minetest does not provide a valid and sane way to get a value from
-- the configuration or – if not present – get a given default value instead,
-- this function exists. It searches the configuration for a value and if the
-- value does not exist it returns the default value defined in this modpack’s
-- `settingtypes.txt` file instead.
--
-- @param value             The descriptor of the value in question
-- @return string|int|bool  The configuration value or the default value
_geo.g = function (value, force_default)
    if force_default ~= true then
        local v = minetest.setting_get(value)
        return (v == nil and _geo.c[value] or v)
    else
        return _geo.c[value]
    end
end


--- Return a translated string.
--
-- Since there currently is no valid convenient way to translate mods (nor
-- is gettext used to translate mod strings) this function only returns
-- the given string. It will be updated/altered as soon as the is a way
-- to translate mods without 3d party mods/libraries.
--
-- @param string   The string that is to be translated
-- @return result  A two values return. 1) the translated string, 2) the
--                 untranslated original string.
_geo.t = function (string)
    local original = string
    local translated = string -- Will be actually translated if MT allows it
    return translated,original
end


-- Output a debug message.
--
-- Checks if debugging messages are enabled and if so reads and parses the
-- given debug message format and prints a debug message wherever the function
-- is called.
--
-- @param information The information to be shown
-- @return void
_geo.d = function (information)
    if _geo.g('xtend_default_debug') == 'false' then return end
    local current_mod = minetest.get_current_modname()
    local string = _geo.g('xtend_default_debug_format'):gsub('+.', {
        ['+i'] = information,
        ['+m'] = current_mod,
        ['+M'] = string.upper(current_mod),
        ['+n'] = '\n',
        ['+t'] = os.date('%H:%M:%S')
    })
    print(string)
end