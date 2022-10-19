local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

local playerFrom = Players.LocalPlayer
local message = "IntoTheFloodAgain"


local filteredString = Chat:FilterStringForBroadcast(message, playerFrom)



local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if queueonteleport then
	queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Hatomi-Ciqada/Pen-Testing-and-Vulnerabilities/main/Bypass.lua'))()")
end

    if syn and "Synapse X" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hatomi-Ciqada/Pen-Testing-and-Vulnerabilities/main/AntiLogger.lua",true))()
		getgenv().AntiLogger = true
    else
        local Players = game:GetService("Players")
		local Player = Players.LocalPlayer or Players.PlayerAdded:wait()

		local PostMessage = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted
		MessageEvent = Instance.new("BindableEvent")

		local OldFunctionHook
		local PostMessageHook = function(self, Message)
			if not checkcaller() and self == PostMessage then
				MessageEvent:Fire(Message)
				return
			end
			return OldFunctionHook(self, Message)
		end
		OldFunctionHook = hookfunction(PostMessage.fire, PostMessageHook)
        getgenv().AntiLogger = true

	end		


local Bypasses = {
    ["ass"] = "as{{aieixzvzx:s}}",
		["asshole"] = "as{{aieixzvzx:shole}}",
		["deadass"] = "dead as{{aieixzvzx:s}}",
		["arse"] = "ar{{aieixzvzx:se}}",  
		["arsehead"] = "ar{{aieixzvzx:se}}head",  
		["arsehole"] = "ar{{aieixzvzx:se}}hole",  
		["bitch"] = "bit{{aieixzvzx:ch}}",
		["bitches"] = "bit{{aieixzvzx:ches}}",  
		["cock"] = "co{{aieixzvzx:ck}}",
		["cocks"] = "co{{aieixzvzx:cks}}",  
		["cunt"] = "cu{{aieixzvzx:nt}}",
		["dick"] = "di{{zczxczvz:ck}}",
		["dickhead"] = "di{{zczxczvz:ckhead}}",
		["dicks"] = "di{{zczxczvz:cks}}",  
		["dyke"] = "dy{{aieixzvzx:ke}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["faggots"] = "fa{{aieixzvzx:ggots}}",
		["fuck"] = "fu{{aieixzvzx:ck}}",
		["fucks"] = "fu{{aieixzvzx:cks}}",
		["fucked"] = "fu{{aieixzvzx:cked}}",
		["fucking"] = "fu{{aieixzvzx:ckign}}",
		["fuckin"] = "fu{{aieixzvzx:ckign}}",
		["gaylord"] = "gayl{{aieixzvzx:ord}}",
		["gaylords"] = "gayl{{aieixzvzx:ords}}",  
		["bastard"] = "bas{{aieixzvzx:tard}}",   
		["bastards"] = "bas{{aieixzvzx:tards}}",   
		["kike"] = "ki{{aieixzvzx:ke}}",
		["kikes"] = "ki{{aieixzvzx:kes}}",  
		["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
		["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}",  
		["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}",  
		["bugger"] = "bugg{{aieixzvzx:er}}",  
		["buggers"] = "bugg{{aieixzvzx:er}}s",  
		["nigga"] = "ni{{aieixzvzx:gga}}",
		["niggas"] = "ni{{aieixzvzx:ggas}}",
		["nigger"] = "ni{{aieixzvzx:gger}}",
		["niggers"] = "ni{{aieixzvzx:ggers}}",
		["piss"] = "p{{aieixzvzx:iss}}", 
		["pisses"] = "p{{aieixzvzx:isses}}",  
		["pissing"] = "p{{aieixzvzx:is}}sing",  
		["pisser"] = "pi{{aieixzvzx:sser}}",  
		["penis"] = "pe{{aieixzvzx:nis}}",
		["penises"] = "pe{{aieixzvzx:nises}}",  
		["pussy"] = "pu{{aieixzvzx:ssy}}",
		["shit"] = "sh{{aieixzvzx:it}}",
		["shitter"] = "sh{{aieixzvzx:itter}}",  
		["shitting"] = "sh{{aieixzvzx:itting}}",  
		["shitty"] = "shi{{aieixzvzx:tty}}",
		["horseshit"] = "horsesh{{aieixzvzx:it}}",  
		["jerk"] = "je{{aieixzvzx:rk}}",  
		["jerking"] = "jer{{aieixzvzx:king}}",  
		["slut"] = "sl{{aieixzvzx:ut}}",
		["sluts"] = "sl{{aieixzvzx:uts}}",  
		["whore"] = "who{{aieixzvzx:re}}",
		["whores"] = "who{{aieixzvzx:res}}",  
		["retard"] = "ret{{aieixzvzx:ard}}",
		["retarded"] = "ret{{aieixzvzx:arded}}",
		["kill"] = "ki{{aieixzvzx:ll}}",
		["kills"] = "ki{{aieixzvzx:lls}}",  
		["killing"] = "ki{{aieixzvzx:lling}}",  
		["gay"] = "g{{aieixzvzx:ay}}",
		["gays"] = "g{{aieixzvzx:ays}}",
		["sex"] = "se{{aieixzvzx:x}}",
		["sexy"] = "se{{aieixzvzx:xy}}",
		["sexting"] = "se{{aieixzvzx:xting}}",
		["porn"] = "po{{aieixzvzx:rn}}",
		["love"] = "l{{aieixzvzx:ove}}",
		["loves"] = "l{{aieixzvzx:oves}}",  
		["lover"] = "l{{aieixzvzx:over}}",  
		["loving"] = "l{{aieixzvzx:oving}}",  
		["date"] = "da{{aieixzvzx:te}}",  
		["dates"] = "da{{aieixzvzx:tes}}",  
		["dating"] = "da{{aieixzvzx:ting}}",  
		["dater"] = "da{{aieixzvzx:ter}}",  
		["rape"] = "ra{{aieixzvzx:pe}}",
		["raped"] = "rap{{aieixzvzx:ed}}",
		["rapes"] = "ra{{aieixzvzx:pes}}",  
		["raping"] = "rap{{aieixzvzx:ing}}",  
		["raper"] = "ra{{aieixzvzx:per}}",  
		["v3rm"] = "v3{{aieixzvzx:rm}}",
		["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
		["hack"] = "ha{{aieixzvzx:ck}}",
		["hacking"] = "hac{{aieixzvzx:king}}",  
		["hacker"] = "hac{{aieixzvzx:ker}}",  
		["hackers"] = "hac{{aieixzvzx:kers}}",  
		["hot"] = "ho{{aieixzvzx:t}}",
		["hotter"] = "ho{{aieixzvzx:tter}}",  
		["boob"] = "bo{{aieixzvzx:ob}}",  
		["boobs"] = "boo{{aieixzvzx:bs}}",
		["tit"] = "t{{aieixzvzx:it}}",  
		["tits"] = "t{{aieixzvzx:its}}",  
		["thot"] = "th{{aieixzvzx:ot}}",  
		["thots"] = "th{{aieixzvzx:ots}}",  
		["thotting"] = "th{{aieixzvzx:otting}}",  
		["thotting"] = "th{{aieixzvzx:otting}}",  
		["condom"] = "con{{aieixzvzx:dom}}",
		["condoms"] = "con{{aieixzvzx:doms}}",  
		["thot"] = "th{{aieixzvzx:ot}}",
		["thots"] = "th{{aieixzvzx:ots}}",  
		["bang"] = "ban{{aieixzvzx:g}}",
		["ligma"] = "li{{aieixzvzx:gma}}",
		["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
		["terrorist"] = "terror{{aieixzvzx:ist}}",
		["terrorists"] = "terror{{aieixzvzx:ists}}",  
		["horny"] = "horn{{aieixzvzx:y}}",
		["mf"] = "m{{aieixzvzx:f}}",
		["lmao"] = "lm{{aieixzvzx:ao}}",
		["anus"] = "an{{aieixzvzx:us}}",
		["hacks"] = "hac{{aieixzvzx:ks}}",
		["predator"] = "pred{{aieixzvzx:ator}}",
		["predators"] = "pred{{aieixzvzx:ator}}",  
		["kiss"] = "ki{{aieixzvzx:ss}}",
		["kisses"] = "ki{{aieixzvzx:sses}}",  
		["kissing"] = "ki{{aieixzvzx:ssing}}",  
		["kisser"] = "ki{{aieixzvzx:sser}}",  
		["bomb"] = "bom{{aieixzvzx:b}}",
		["bomb"] = "bom{{aieixzvzx:bs}}",  
		["nude"] = "nu{{aieixzvzx:de}}",
		["nudes"] = "nu{{aieixzvzx:des}}",
		["child"] = "chi{{aieixzvzx:ld}}",
		["my"] = "m{{aieixzvzx:y}}",
		["racism"] = "raci{{aieixzvzx:sm}}",
		["hoe"] = "h{{aieixzvzx:oe}}",
		["pedo"] = "pe{{aieixzvzx:do}}",
		["nsfw"] = "ns{{aieixzvzx:fw}}",
		["suck"] = "su{{aieixzvzx:ck}}",
		["cum"] = "c{{aieixzvzx:um}}",
		["cums"] = "c{{aieixzvzx:ums}}",
		["cumming"] = "cu{{aieixzvzx:mming}}",
		["cumload"] = "cu{{aieixzvzx:mload}}",
		["creampie"] = "cre{{aieixzvzx:ampie}",
		["scammer"] = "sca{{aieixzvzx:mmer}}",
		["fucker"] = "fu{{aieixzvzx:cker}}",
		["hitler"] = "hit{{aieixzvzx:ler}}",
		["nazi"] = "na{{aieixzvzx:zi}}",
		["simp"] = "si{{aieixzvzx:mp}}",
		["simping"] = "sim{{aieixzvzx:ping}}",
		["meth"] = "me{{aieixzvzx:th}}",
		["cocaine"] = "co{{aieixzvzx:caine}}",
		["heroin"] = "hero{{aieixzvzx:in}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["ballsack"] = "ba{{aieixzvzx:llsack}}",
		["nutsack"] = "nu{{aieixzvzx:tsack}}",
		["athiest"] = "athi{{aieixzvzx:est}}",
		["jewish"] = "je{{aieixzvzx:wish}}",
		["christian"] = "chri{{aieixzvzx:stian}}",
		["muslim"] = "mu{{aieixzvzx:slim}}",
		["jurdism"] = "jur{{aieixzvzx:dism}}",
		["islam"] = "isl{{aieixzvzx:am}}",
		["allah"] = "al{{aieixzvzx:lah}}",
		["muhammad"] = "muha{{aieixzvzx:mmad}}",
		["christianity"] = "chri{{aieixzvzx:stianity}}",
		["satanism"] = "sata{{aieixzvzx:nism}}",
		["1"] = "on{{aieixzvzx:e}}",
		["2"] = "t{{aieixzvzx:wo}}",
		["3"] = "th{{aieixzvzx:ree}}",
		["4"] = "fo{{aieixzvzx:ur}}",
		["5"] = "fi{{aieixzvzx:ve}}",
		["6"] = "s{{aieixzvzx:ix}}",
		["7"] = "se{{aieixzvzx:ven}}",
		["8"] = "ei{{aieixzvzx:ght}}",
		["9"] = "ni{{aieixzvzx:ne}}",
		["10"] = "te{{aieixzvzx:n}}",
		["twitter"] = "twi{{aieixzvzx:tter}}",
		["youtube"] = "you{{aieixzvzx:tube}}",
		["rumble"] = "rum{{aieixzvzx:ble}}",
		["tiktok"] = "tik{{aieixzvzx:tok}}",
		["facebook"] = "face{{aieixzvzx:book}}",
		["whatsapp"] = "wha{{aieixzvzx:tsapp}}",
		["discord"] = "disco{{aieixzvzx:rd}}",
		["instagram"] = "inst{{aieixzvzx:agram}}",
		["snapchat"] = "snap{{aieixzvzx:chat}}",
		["wtf"] = "wt{{aieixzvzx:f}}",
		["gtfo"] = "gt{{aieixzvzx:fo}}",
		["kys"] = "k{{aieixzvzx:ys}}",
		["omfg"] = "omf{{aieixzvzx:g}}",
		["stfu"] = "st{{aieixzvzx:fu}}",
		["ily"] = "il{{aieixzvzx:y}}",
		["istg"] = "is{{aieixzvzx:tg}}",
		["and"] = "a{{aieixzvzx:nd}}",
		["or"] = "o{{aieixzvzx:r}}",
		["if"] = "i{{aieixzvzx:f}}",
		["else"] = "el{{aieixzvzx:se}}",
		["then"] = "th{{aieixzvzx:en}}",
		["why"] = "wh{{aieixzvzx:y}}",
		["what"] = "wha{{aieixzvzx:t}}",
		["who"] = "wh{{aieixzvzx:o}}",
		["where"] = "wh{{aieixzvzx:ere}}",
		["see"] = "se{{aieixzvzx:e}}",
		["do"] = "d{{aieixzvzx:o}}",
		["to"] = "t{{aieixzvzx:o}}",
		["of"] = "o{{aieixzvzx:f}}",
		["he"] = "h{{aieixzvzx:e}}",
		["she"] = "sh{{aieixzvzx:e}}",
		["they"] = "th{{aieixzvzx:ey}}",
		["them"] = "th{{aieixzvzx:em}}",
		["had"] = "h{{aieixzvzx:add}}",
		["for"] = "fo{{aieixzvzx:r}}",
		["on"] = "o{{aieixzvzx:n}}",
		["as"] = "a{{aieixzvzx:s}}",
		["you"] = "yo{{aieixzvzx:u}}",
		["my"] = "m{{aieixzvzx:y}}",
		["yours"] = "you{{aieixzvzx:rs}}",
		["not"] = "no{{aieixzvzx:t}}",
		["with"] = "wi{{aieixzvzx:th}}",
		["number"] = "numb{{aieixzvzx:er}}",
		["numbers"] = "numb{{aieixzvzx:ers}}",
		["day"] = "da{{aieixzvzx:y}}",
		["night"] = "ni{{aieixzvzx:ght}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["come"] = "co{{aieixzvzx:me}}",
		["it"] = "i{{aieixzvzx:t}}",
		["some"] = "so{{aieixzvzx:me}}",
		["there"] = "the{{aieixzvzx:re}}",
		["but"] = "bu{{aieixzvzx:t}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["all"] = "a{{aieixzvzx:ll}}",
		["get"] = "ge{{aieixzvzx:t}}",
		["its"] = "i{{aieixzvzx:ts}}",
		["yes"] = "ye{{aieixzvzx:s}}",
		["no"] = "n{{aieixzvzx:o}}",
		["so"] = "s{{aieixzvzx:o}}",
		["said"] = "sa{{aieixzvzx:id}}",
		["can"] = "ca{{aieixzvzx:n}}",
		["more"] = "mo{{aieixzvzx:re}}",
		["cuddle"] = "cud{{aieixzvzx:dle}}",
 		["attractive"] = "attr{{aieixzvzx:active}}",
		["slave"] = "sl{{aieixzvzx:ave}}",
		["slaves"] = "sl{{aieixzvzx:aves}}",
		["cracker"] = "crac{{aieixzvzx:ker}}",
		["peg"] = "pe{{aieixzvzx:g}}",
		["pegged"] = "pe{{aieixzvzx:gged}}",
		["finger"] = "fin{{aieixzvzx:ger}}",
		["fingered"] = "fin{{aieixzvzx:gered}}",
		["ride"] = "ri{{aieixzvzx:de}",
		["rides"] = "rid{{aieixzvzx:es}",
		["riding"] = "rid{{aieixzvzx:ing}",
		["kkk"] = "k{{aieixzvzx:kk}}",
		[".com"] = ".c{{aieixzvzx:om}}",
		["anal"] = "a{{aieixzvzx:n}}al",
		["sugar"] = "sug{{aieixzvzx:ar}}",
		["suicide"] = "sui{{aieixzvzx:cide}}",
		["hentai"] = "hen{{aieixzvzx:tai}}",
		["yaoi"] = "ya{{aieixzvzx:oi}}",
		["coon"] = "co{{aieixzvzx:on}}",
		["babe"] = "ba{{aieixzvzx:be}}",
		["babes"] = "ba{{aieixzvzx:bes}}",
		["sperm"] = "spe{{aieixzvzx:rm}}",
		["semen"] = "se{{aieixzvzx:men}}",
		["egg"] = "e{{aieixzvzx:gg}}",
		["twat"] = "twa{{aieixzvzx:t}}",
		["twats"] = "tw{{aieixzvzx:ats}}",
		["daddy"] = "dad{{aieixzvzx:dy}}",
		["mommy"] = "mom{{aieixzvzx:my}}",
		["daddies"] = "dadd{{aieixzvzx:ies}}",
		["mommies"] = "momm{{aieixzvzx:ies}}",
		["bend"] = "be{{aieixzvzx:nd}}",
		["bends"] = "be{{aieixzvzx:nds}}",
		["bending"] = "be{{aieixzvzx:n}}ding",
		["weed"] = "we{{aieixzvzx:ed}}",
		["hot"] = "h{{aieixzvzx:ot}}",
		["incest"] = "inc{{aieixzvzx:est}}",
		["lick"] = "lic{{aieixzvzx:k}}",
		["ball"] = "ba{{aieixzvzx:ll}}",
		["balls"] = "ba{{aieixzvzx:lls}}"
	}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if self == Remote and Method == "FireServer" then
        local Message = Arguments[1]
        local Split = Message:split(" ")
        local FinalMessage = ""

        for _, x in next, Split do
            for _, Bypass in next, Bypasses do
                if x:lower() == _ then
                    if x:upper() ~= x then
                        Message = Message:gsub(x, Bypass)
                        FinalMessage = Message .. " fn"
                    else
                        Message = Message:gsub(x, Bypass):upper()
                        FinalMessage = Message:gsub(x, Bypass):upper() .. " fn"
                    end
                end
            end
        end
        
        if FinalMessage ~= "" then
            Arguments[1] = FinalMessage
        end
        
        return ChatBypass(self, unpack(Arguments))
    end
    
    return ChatBypass(self, ...)
end)
