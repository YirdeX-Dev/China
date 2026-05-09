local RunScriptFirst = false

local Translations = {
["Anti AFK"] = "防挂机",
["FPS Cap"] = "帧率限制",
["Low Graphics"] = "低画质模式",
["Custom FOV"] = "自定义视野",
["FOV Value"] = "视野数值",
["Custom Gravity"] = "自定义重力",
["Gravity Value"] = "重力数值",
["Korblox"] = "Korblox 效果",
["Headless"] = "无头效果",
["Webhook Logging"] = "Webhook 日志",
["Webhook URL"] = "Webhook 链接",
["UI Theme"] = "界面主题",
["Config Manager"] = "配置管理",
["Config Name"] = "配置名称",
["Existing Configs"] = "已有配置",
["Refresh List"] = "刷新列表",
["Save Config"] = "保存配置",
["Rejoin Server"] = "重连服务器",
["Server Hop"] = "换服",
["Copy Server ID"] = "复制服务器ID",
["Spectate Closest Player"] = "观战最近玩家",
["Reset Camera"] = "重置相机",
["AI Play"] = "AI自动游玩",
["AI Mode"] = "AI模式",
["AI Jumping"] = "AI自动跳跃",
["AI Jump Chance"] = "AI跳跃概率",
["AI Double Jump Chance"] = "AI二段跳概率",
["AI Distance"] = "AI距离",
["AI Traverse Speed"] = "AI移动速度",
["AI Move Duration"] = "AI移动时长",
["AI Offset Factor"] = "AI偏移系数",
["Defensive"] = "防御模式",
["Aggressive"] = "进攻模式",
["Balanced"] = "均衡模式",
["Auto Farm Mode"] = "自动刷币模式",
["Farm Orbit Speed"] = "刷币环绕速度",
["Farm Height"] = "刷币高度",
["Farm Radius"] = "刷币半径",
["Farm Complexity"] = "刷币复杂度",
["Auto Claim Rewards"] = "自动领取奖励",
["Auto Requeue Ranked"] = "自动重新排位",
["Ranked Mode"] = "排位模式",
["Auto Requeue Duels"] = "自动重新决斗",
["FFA"] = "自由混战",
["Teams"] = "团队模式",
["Duos"] = "双人模式",
["UnderBall"] = "球下模式",
["X Orbit"] = "X轴环绕",
["Y Orbit"] = "Y轴环绕",
["Z Orbit"] = "Z轴环绕",
["Helix"] = "螺旋模式",
["Figure8"] = "8字模式",
["Spiral"] = "螺旋模式",
["Random Orbit"] = "随机环绕",
["Strafe"] = "侧移",
["Strafe Speed"] = "侧移速度",
["Fly"] = "飞行",
["Fly Speed"] = "飞行速度",
["Super Jump"] = "超级跳跃",
["Jump Power"] = "跳跃力度",
["Spinbot"] = "自旋攻击",
["Spin Speed"] = "自旋速度",
["BHop"] = "连跳",
["Safe Walk"] = "安全行走",
["Anti Void"] = "防虚空掉落",
["Desync"] = "反同步",
["Desync Radius"] = "反同步半径",
["Desync Height"] = "反同步高度",
["Desync Cycle Speed"] = "反同步循环速度",
["Custom Skybox"] = "自定义天空盒",
["Skybox Type"] = "天空盒类型",
["Atmosphere"] = "大气效果",
["Atmosphere Density"] = "大气密度",
["Saturation"] = "饱和度",
["Saturation Level"] = "饱和度等级",
["Hue Shift"] = "色相偏移",
["Hue Shift Value"] = "色相偏移数值",
["No Fog"] = "无雾效果",
["Music"] = "背景音乐",
["Music Track"] = "音乐曲目",
["Music Volume"] = "音乐音量",
["Hit Sound"] = "命中音效",
["Hit Sound Type"] = "命中音效类型",
["Hit Sound Volume"] = "命中音效音量",
["Blood Moon"] = "血色月亮",
["Blue Galaxy"] = "蓝色银河",
["Bright Pink"] = "亮粉色",
["Dark Night"] = "黑夜",
["Deep Space"] = "深空",
["Desert"] = "沙漠",
["Minecraft"] = "我的世界",
["Redshift"] = "红移",
["Synthwave"] = "合成波",
["Vaporwave"] = "蒸汽波",
["Beyond the Shadows"] = "超越阴影",
["Bounce"] = "弹跳",
["Candy Kingdom"] = "糖果王国",
["Dark Synth"] = "黑暗合成",
["Erwachen"] = "觉醒",
["Grasp the Light"] = "把握光明",
["Lo-fi Ambient"] = "低保真氛围",
["Lo-fi Chill A"] = "低保真舒缓A",
["Missing Money"] = "遗失的金钱",
["Rise to the Horizon"] = "升向地平线",
["Rule The World"] = "统治世界",
["Sour Grapes"] = "酸葡萄",
["Speed"] = "速度",
["Sweep"] = "横扫",
["Tears in the Rain"] = "雨中泪",
["Bameware"] = "Bameware音效",
["Bat"] = "蝙蝠",
["Bell Ding"] = "叮咚声",
["Bubble"] = "泡泡声",
["Call of Duty"] = "使命召唤",
["Fatality"] = "终结技",
["Garrys Mod Death"] = "盖瑞模组死亡音效",
["Laser"] = "激光",
["Minecraft XP"] = "我的世界经验音效",
["Neverlose Sound"] = "Neverlose音效",
["Osu Hit"] = "Osu命中音效",
["Rust Headshot"] = "Rust爆头音效",
["Saber"] = "光剑音效",
["Skeet"] = "Skeet音效",
["Steve"] = "史蒂夫音效",
["Visualizer Hue"] = "可视化色相",
["Visualizer Material"] = "可视化材质",
["Camera Lock"] = "相机锁定",
["Ball Velocity ESP"] = "球速透视",
["Ball Trail"] = "球轨迹",
["Ball Trail Rainbow"] = "球轨迹彩虹效果",
["Ball Trail Particles"] = "球轨迹粒子",
["Ball Trail Glow"] = "球轨迹发光",
["Ball Trail Hue"] = "球轨迹色相",
["ForceField"] = "力场",
["Neon"] = "霓虹",
["Plastic"] = "塑料",
["Glass"] = "玻璃",
["Ice"] = "冰",
["Foil"] = "金属箔",
["Detect Phantom"] = "检测幻影",
["Detect Slashes of Fury"] = "检测狂怒斩击",
["Detect Death Slash"] = "检测死亡斩击",
["SOF Mode"] = "SOF模式",
["Auto Ability"] = "自动技能",
["Cooldown Protection"] = "冷却保护",
["ThunderDash No Cooldown"] = "雷霆冲刺无冷却",
["Continuity Zero"] = "连续归零",
["Disable Quantum FX"] = "禁用量子特效",
["by al"] = "<font color='#33FFEE'>Y</font><font color='#33EEFF'>i</font><font color='#33DDFF'>r</font><font color='#33CCFF'>d</font><font color='#33BBFF'>e</font><font color='#33AAFF'>X</font><font color='#3399FF'>汉</font><font color='#3388FF'>化</font>",
["Detect Singularity"] = "检测奇点",
["Detect Infinity"] = "检测无限",
["Detect TimeHole"] = "检测时间洞",
["Blatant"] = "明显模式",
["Legit"] = "合法模式",
["Copy Discord Link"] = "复制Discord链接",
["Credits"] = "鸣谢",
["Dashboard"] = "仪表盘",
["Refresh Dashboard"] = "刷新仪表盘",
["Auto Parry"] = "自动格挡",
["Auto Spam"] = "自动连点",
["Manual Spam"] = "手动连点",
["AI Auto Config"] = "AI自动配置",
["Spam Speed"] = "连点速度",
["Parry Direction"] = "格挡方向",
["Parry Accuracy"] = "格挡准确率",
["Spam Sensitivity"] = "连点灵敏度",
["Custom"] = "自定义",
["Random"] = "随机",
["Straight"] = "直线",
["Up"] = "上",
["Right"] = "右",
["Left"] = "左",
["Backwards"] = "后",
["KillAura"] = "杀戮光环",
["ESP"] = "透视",
["ESP Boxes"] = "透视方框",
["ESP Names"] = "透视名称",
["ESP Health"] = "透视血量",
["ESP Distance"] = "透视距离",
["ESP Equipment"] = "透视装备",
["ESP Tracers"] = "透视追踪线",
["Visualizer"] = "可视化",
["Visualizer Rainbow"] = "可视化彩虹效果",
["Ball Trail Gradient Hue"] = "球轨迹渐变色相",
["Player Trail"] = "玩家轨迹",
["Player Trail Hue"] = "玩家轨迹色相",
["Player Trail Gradient Hue"] = "玩家轨迹渐变色相",
["Switches"] = "开关音效",
["TF2 Critical"] = "TF2暴击音效",
["cutie pop"] = "可爱泡泡音效",
["Load Config"] = "加载配置",
["Delete Config"] = "删除配置",
["Auto Load on Start"] = "启动时自动加载",
["Remove Auto Load"] = "移除自动加载",
["Destroy Script"] = "销毁脚本",
["Home"] = "主页",
["Stats"] = "统计",
["Combat"] = "战斗",
["Ability"] = "技能",
["Visuals"] = "视觉",
["World"] = "世界",
["Movement"] = "移动",
["Farm"] = "刷币",
["Server"] = "服务器",
["Settings"] = "设置"
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
        loadstring(game:HttpGet("https://4x.wtf/loader"))()
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
