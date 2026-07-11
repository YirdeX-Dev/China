local RunScriptFirst = false

local Translations = {
["Sky Squid Game & Poles"] = "高空鱿鱼游戏与杆子功能",
["SKY SQUID GAME GODMODE (BETA)"] = "高空鱿鱼游戏无敌模式（测试版）",
["INSTA GRAB Poles"] = "一键抓取杆子",
["NPC Kill & Aimbot"] = "NPC击杀与自瞄",
["Auto Kill NPC Guards"] = "自动击杀守卫NPC",
["Rebel Aimbot"] = "反叛者自瞄",
["Teleport & Emotes"] = "传送与动作表情",
["Select Player"] = "选择玩家",
["Teleport to Selected Player"] = "传送到选中玩家",
["Refresh Player List"] = "刷新玩家列表",
["Select Emotes"] = "选择动作表情",
["Play Selected Emotes"] = "播放选中表情动作",
["Stop Emoting"] = "停止播放表情",
["Jump/Glass"] = "跳房子/玻璃桥",
["Jump Rope"] = "跳绳关卡",
["TP to End (Jump Rope)"] = "跳绳关卡直达终点",
["Delete The Rope"] = "移除跳绳",
["Glass Bridge Features"] = "玻璃桥功能",
["Enable Glass ESP"] = "玻璃透视",
["Troll Players Glass Bridge"] = "防破碎",
["TP to End (Glass Bridge)"] = "玻璃桥直达终点",
["Mingle"] = "抱团配对关卡",
["Auto QTE"] = "自动QTE",
["QTE Info"] = "QTE说明",
["Hits each QTE button automatically. Works during Mingle, dalgona ladder climb minigame, sky squid"] = "自动完成所有快速按键，适用于抱团、椪糖爬梯小游戏、高空鱿鱼模式",
["Auto Win Mingle"] = "旋转木马一键获胜",
["How Auto Win Works"] = "一键获胜功能说明",
["When the door is ever 1/1 it will automatically tp you to a room and lock the door. If it doesn't work you gotta manually close the door. If it's more than 1 player in a room it will automatically tp you to a group of players so you can get into a room together. Still kinda luck based."] = "当房间仅剩1人时自动传送并锁门；失效时需手动关门；房间多人时自动匹配组队房间，存在一定运气成分",
["Random"] = "杂项功能",
["Game Boosts"] = "游戏增益",
["Parkour Artist"] = "跑酷大师",
["Auto Skip Button"] = "自动跳过弹窗按钮",
["Movement & AntiFling"] = "移动与防击飞",
["WalkSpeed Increase"] = "开启移速提升",
["WalkSpeed Amount"] = "移速倍率数值",
["Reset WalkSpeed to Normal"] = "重置移速至默认",
["Fly Premium Only"] = "飞行功能 仅限付费会员",
["Fly is only for premium currently because there is a lot of ban risks for this so be carful using this and always use an alt account since there is a lot of mods."] = "飞行功能仅对会员开放，封禁风险极高，建议使用小号游玩",
["Fly (BETA)"] = "飞行（测试版）",
["Locked"] = "已锁定",
["Fly Speed"] = "飞行速度",
["Hide & Seek"] = "捉迷藏",
["Hide And Seek ESP"] = "捉迷藏透视标记",
["ESP Hider & Seeker"] = "透视标记躲藏者与搜寻者",
["ESP Exit Doors"] = "透视标记逃生门",
["Key ESP & Utility"] = "钥匙透视与工具",
["ESP Keys"] = "透视标记钥匙",
["Teleport to Random Hider"] = "随机传送到一名躲藏者身边",
["Kill Aura"] = "范围击杀光环",
["KILL AURA (EXTREMELY SAFE)"] = "范围击杀光环（极低封禁风险）",
["Hide And Seek Features"] = "捉迷藏专属功能",
["KILL HIDERS (BETA)"] = "击杀躲藏者（测试版）",
["Hide And Seek Utilities"] = "捉迷藏工具",
["Teleport 100 Blocks Up"] = "向上传送100格",
["Teleport 40 Blocks Down"] = "向下传送40格",
["Delete the Spikes"] = "移除尖刺陷阱",
["Tug Of War"] = "拔河",
["Tug Of War Features"] = "拔河专属功能",
["How It Works"] = "功能使用说明",
["Watch the full video in RINGTA to learn how to use and ban safety strategies. Also recommend only doing standard mode"] = "观看RINGTA完整教程视频学习使用方法与防封禁技巧，推荐仅游玩标准模式",
["Auto Pull (Smart Timing)"] = "自动拔河（智能时机）",
["Dalgona"] = "抠糖饼",
["Player Utilities"] = "玩家辅助工具",
["Auto Complete Dalgona"] = "一键完成抠糖饼",
["Auto Relaxing (Breathing)"] = "自动屏息",
["Free Lighter"] = "无限打火机",
["Red Light"] = "红灯游戏",
["Main Features"] = "核心功能",
["Teleport to End"] = "直达关卡终点",
["Remove Injury"] = "清除受伤判定",
["Pentathlon"] = "5人6足",
["Auto Win"] = "一键通关",
["How To Use"] = "使用教程",
["Watch the ringta long scripts video to know how to correctly use."] = "观看ringta完整脚本教学视频了解正确使用方式",
["Win: Ddakji"] = "通关：打画片",
["Win: FlyingStone"] = "通关：扔石子",
["Win: Gonggi"] = "通关：抓石子",
["Win: SpinningTop"] = "通关：陀螺对战",
["Win: Jegi"] = "通关：踢毽子",
["Features"] = "主要",
["Home"] = "首页",
["SCRIPTS"] = "YirdeX汉化",
["Rebel"] = "反叛",
["Playable Guards"] = "玩家守卫",
["Guard Auto-Shoot"] = "守卫自动射击",
["Auto-Shoot (Guard)"] = "自动射击（守卫）",
["INFO ON THIS FEATURE"] = "功能说明",
["Auto-Shoot"] = "自动射击",
["Auto-Shoot Guards"] = "自动射击守卫",
["this feature will auto shoot players like in red light green light and whenever a player pushes you or in hide and seek the players who do not kill a hider or in mingle the players who do not get in a room. So it may be obvious your cheating so be carful using this YOUR AMMO WILL NOT GO DOWN THAT IS NORMAL, watch the full video in ringta to learn how to use this feature correctly and a guide. if you are positive this is not working try turning it off and on again and see if it fixes it and if it dosent work then report the issue. Always use an alt account so incase you get banned you dont lose everything."] = "此功能会像在“红灯绿灯”模式中一样自动射击玩家。当玩家推你时，或者在“捉迷藏”模式中，它会自动射击不杀躲藏者的玩家；在“混战”模式中，它会自动射击没有进入房间的玩家。所以这可能会很明显的暴露你在作弊，请谨慎使用。你的弹药不会消耗，这是正常现象。请观看 Ringta 上的完整视频和指南，了解如何正确使用此功能。如果你确信此功能不生效，请尝试先关闭再打开看是否能修复；如果还是不行，请报告问题。始终使用小号，以防被封号导致你失去所有东西。",
["this feature will auto shoot guards in rebel it will kill the playable guards and the npc guards aswell so it may be obvious your cheating so be carful using this YOUR AMMO WILL NOT GO DOWN THAT IS NORMAL, watch the full video in ringta to learn how to use this feature correctly and a guide. if you are positive this is not working try turning it off and on again and see if it fixes it and if it dosent work then report the issue. Always use an alt account so incase you get banned you dont lose everything."] = "此功能会在“叛徒”模式中自动射击守卫，它会同时击杀可玩角色守卫和 NPC 守卫。所以这可能会很明显的暴露你在作弊，请谨慎使用。你的弹药不会消耗，这是正常现象。请观看 Ringta 上的完整视频和指南，了解如何正确使用此功能。如果你确信此功能不生效，请尝试先关闭再打开看是否能修复；如果还是不行，请报告问题。始终使用小号，以防被封号导致你失去所有东西。",
["Final"] = "最终关卡模块"
}
local function translateText(text)
    if not text or type(text) ~= "string" then return text end
    if Translations[text] then return Translations[text] end
    for en, cn in pairs(Translations) do
        if text:find(en) then return text:gsub(en, cn) end
    end
    return text
end

local function translateAllElements()
    local function translateGui(gui)
        for _, element in ipairs(gui:GetDescendants()) do
            if element:IsA("TextLabel") or element:IsA("TextButton") or element:IsA("TextBox") then
                local currentText = element.Text
                if currentText and currentText ~= "" then
                    local translatedText = translateText(currentText)
                    if translatedText ~= currentText then
                        element.Text = translatedText
                    end
                end
            end
        end
    end
    
    pcall(translateGui, game:GetService("CoreGui"))
end

local function setupListener()
    local function connectToGui(gui)
        gui.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("TextLabel") or descendant:IsA("TextButton") or descendant:IsA("TextBox") then
                local currentText = descendant.Text
                if currentText and currentText ~= "" then
                    local translatedText = translateText(currentText)
                    if translatedText ~= currentText then
                        descendant.Text = translatedText
                    end
                end
                
                descendant:GetPropertyChangedSignal("Text"):Connect(function()
                    local newText = descendant.Text
                    if newText and newText ~= "" then
                        local translatedText = translateText(newText)
                        if translatedText ~= newText then
                            descendant.Text = translatedText
                        end
                    end
                end)
            end
        end)
    end
    
    pcall(connectToGui, game:GetService("CoreGui"))
end

local function startTranslation()
    translateAllElements()
    setupListener()
end

local function loadScript()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef34/inkgames.github.io/refs/heads/main/ringta.lua"))()
    end)

    if not success then
        warn("加载失败:", err)
    end
end

if RunScriptFirst then
    loadScript()
    startTranslation()
else
    startTranslation()
    loadScript()
end
