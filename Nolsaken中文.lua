local RunScriptFirst = false

local Translations = {
["Info"] = "信息",
["ESP"] = "绘制",
["Main"] = "主要",
["Abilities"] = "技能",
["Hitbox"] = "碰撞箱",
["Anti-Effects"] = "反负面效果",
["Guest 1337"] = "访客1337",
["TwoTime"] = "两次",
["Misc"] = "杂项",
["UI Settings"] = "界面设置",
["Killer"] = "杀手",
["Killer ESP"] = "杀手透视",
["Killer Tracers"] = "杀手连线标记",
["Show Killer Name"] = "显示杀手名称",
["Show Killer Health"] = "显示杀手血量",
["Show Killer Skin"] = "显示杀手皮肤",
["Fill Transparency"] = "填充透明度",
["Outline Transparency"] = "轮廓透明度",
["Killer Color"] = "杀手透视颜色",
["Survivor"] = "幸存者",
["Survivor ESP"] = "幸存者透视",
["Survivor Tracers"] = "幸存者连线标记",
["Show Survivor Name"] = "显示幸存者名称",
["Show Survivor Health"] = "显示幸存者血量",
["Show Survivor Skin"] = "显示幸存者皮肤",
["Survivor Color"] = "幸存者透视颜色",
["Items"] = "物品",
["Generator ESP"] = "发电机透视",
["Item ESP"] = "道具透视",
["Pizza ESP"] = "披萨透视",
["Tripwire ESP"] = "绊线透视",
["Trip Mine ESP"] = "地雷透视",
["Respawn Point ESP"] = "复活点透视",
["Graffiti ESP"] = "涂鸦透视",
["Task Folder ESP"] = "任务文件夹透视",
["Special"] = "特殊实体",
["Pizza Delivery ESP"] = "送餐NPC透视",
["Zombie ESP"] = "僵尸透视",
["Tracers"] = "连线标记",
["Generator Tracers"] = "发电机连线",
["Item Tracers"] = "道具连线",
["Pizza Tracers"] = "披萨连线",
["Delivery Tracers"] = "送餐NPC连线",
["Zombie Tracers"] = "僵尸连线",
["Tripwire Tracers"] = "绊线连线",
["Trip Mine Tracers"] = "地雷连线",
["Respawn Point Tracers"] = "复活点连线",
["Text"] = "文字显示",
["Show Generator Text"] = "显示发电机文字",
["Show Item Text"] = "显示道具文字",
["Show Pizza Text"] = "显示披萨文字",
["Show Delivery Text"] = "显示送餐NPC文字",
["Show Zombie Text"] = "显示僵尸文字",
["Show Tripwire Text"] = "显示绊线文字",
["Show Trip Mine Text"] = "显示地雷文字",
["Show Respawn Point Text"] = "显示复活点文字",
["Show Graffiti Text"] = "显示涂鸦文字",
["Show Task Folder Text"] = "显示任务文件夹文字",
["Enable"] = "开启",
["Outline Only"] = "仅显示轮廓",
["Show Nametag"] = "显示名称标签",
["Ability Color"] = "技能透视颜色",
["Trip Mine Spawn Alert"] = "地雷生成提示",
["Entity Spawn Alert"] = "实体生成提示",
["Fast"] = "快速交互",
["Repair Speed (seconds)"] = "修理速度(秒)",
["Auto Repair"] = "自动修理",
["Default recommended, fast repair won't get you kicked"] = "默认推荐，快速修理不会被踢出",
["Unsafe, can be noticed by other players"] = "不安全，其他玩家可察觉",
["Safe repair, be a good actor"] = "安全修理，低调不暴露",
["Acting"] = "伪装参数",
["Stamina"] = "体力",
["Settings"] = "参数设置",
["Infinite Stamina"] = "无限体力",
["Max Stamina Mod"] = "最大体力修改",
["Stamina Regen Mod"] = "体力恢复修改",
["Stamina Drain Mod"] = "体力消耗修改",
["Sprint Speed Mod"] = "奔跑速度修改",
["Max Stamina Value"] = "体力上限数值",
["Sprint Speed"] = "奔跑速度",
["Stamina Regen Speed"] = "体力恢复速度",
["Stamina Drain Speed"] = "体力消耗速度",
["Connect"] = "网络连接",
["Connection Speed"] = "连接速度",
["Auto Connect"] = "自动重连",
["Simulates player connections, default recommended"] = "模拟玩家正常连接，推荐默认值",
["Teleport"] = "传送功能",
["Load Generator Farm"] = "加载发电机挂机点位",
["Teleport to Unfinished Generator"] = "传送到未修复发电机",
["Environment"] = "环境渲染",
["Camera"] = "镜头设置",
["Visual"] = "视觉特效",
["Brightness Value"] = "亮度数值",
["No Shadows"] = "关闭阴影",
["Remove Fog"] = "移除迷雾",
["Enable FOV"] = "开启视野缩放",
["Field of View (FOV)"] = "视野范围(FOV)",
["Force Field Material"] = "力场材质",
["Transparency"] = "透明度",
["Trail Effect"] = "拖尾特效",
["Trail Color"] = "拖尾颜色",
["Trail Lifetime"] = "拖尾持续时长",
["Veeronica"] = "维罗妮卡角色",
["Auto Skateboard Jump"] = "滑板自动跳跃",
["Device Type"] = "设备类型",
["PC"] = "电脑",
["Mobile"] = "移动",
["Skateboard Movement Control"] = "滑板移动控制",
["Vampire"] = "吸血鬼角色",
["Auto Farm"] = "自动挂机",
["Kill Aura"] = "击杀范围光环",
["Aura Radius"] = "光环半径",
["Speed"] = "移动速度",
["Kill Farm"] = "自动击杀挂机",
["Execution Speed"] = "执行速度",
["Anti-Effects"] = "反负面效果",
["Anti-negative effects, etc."] = "反各类负面效果等",
["Punch Aim"] = "拳击自瞄",
["teleport"] = "传送",
["Anti-Slateskin Speed"] = "抵御石板减速效果",
["Anti-Charge Cooldown"] = "抵御冲锋冷却限制",
["Infinite Crystal Time"] = "水晶持续时间无限",
["Instant Crystal Charge"] = "水晶瞬间充能",
["Universal"] = "全局通用",
["Show Chat"] = "显示聊天框",
["Anti-Acid"] = "抵御腐蚀伤害",
["Anti-Slow"] = "抵御减速效果",
["Anti-Stun"] = "抵御眩晕效果",
["Remove Visual Effects"] = "移除负面视觉特效",
["Config"] = "参数配置",
["Punch Expansion Value"] = "拳击判定扩大数值",
["Power"] = "强度",
["Block Distance"] = "格挡距离",
["units"] = "单位",
["Punch Lunge Extender"] = "拳击突进判定扩大",
["Block Extender"] = "格挡判定扩大",
["Hitbox Expander"] = "全局攻击判定扩大",
["Expansion Value"] = "判定扩大数值",
["Main"] = "主设置",
["Parts"] = "判定模型",
["Anti-Bait"] = "防骗检测",
["Cone"] = "锥形检测",
["Viewport"] = "预览窗口",
["Delay"] = "延迟参数",
["Auto Block"] = "自动格挡",
["Visualization"] = "可视化预览",
["Mode"] = "模式",
["Compass"] = "罗盘",
["Face Player"] = "朝向玩家",
["判定范围"] = "判定范围",
["Angle"] = "角度",
["Aim"] = "自瞄",
["Static"] = "静态",
["Sphere"] = "球形",
["Part"] = "部件锁定",
["Player Facing Check"] = "玩家朝向检测",
["Killer Facing Check"] = "杀手朝向检测",
["Wall Check"] = "墙体碰撞检测",
["Block Abilities"] = "技能格挡",
["Detection Range"] = "检测范围",
["Player Facing Angle"] = "玩家朝向角度",
["Killer Facing Angle"] = "杀手朝向角度",
["Show Detection Parts"] = "显示检测模型",
["Part Color"] = "模型颜色",
["Overall Size Multiplier"] = "整体尺寸倍率",
["Part Length"] = "模型长度",
["Part Width"] = "模型宽度",
["Part Height"] = "模型高度",
["Forward/Backward Offset"] = "前后偏移量",
["Up/Down Offset"] = "上下偏移量",
["Part Transparency"] = "模型透明度",
["Block Delay"] = "格挡延迟",
["Delay Time"] = "延迟时长",
["seconds"] = "秒",
["Zone Detection"] = "区域检测",
["Part of body in Zone"] = "身体局部处于区域内",
["Full Body in Zone"] = "全身处于区域内",
["Line Thickness"] = "线条粗细",
["Zone Center Offset"] = "区域中心偏移",
["Standing Zone (Purple)"] = "站立检测区域(紫色)",
["Stand - Length"] = "站立区域-长度",
["Stand - Width"] = "站立区域-宽度",
["Stand - Height"] = "站立区域-高度",
["Walking Zone (Blue)"] = "行走检测区域(蓝色)",
["Walk - Length"] = "行走区域-长度",
["Walk - Width"] = "行走区域-宽度",
["Walk - Height"] = "行走区域-高度",
["Search"] = "搜索",
["TwoTime"] = "两次",
["TwoTime related features"] = "两次相关功能",
["Main"] = "主要",
["Prediction"] = "预判",
["Adjust"] = "微调参数",
["Glide"] = "平滑瞄准",
["Auto Backstab"] = "自动背刺",
["Direct Behind Check"] = "纯身后判定检测",
["Aiming"] = "自瞄开启",
["Auto Dagger"] = "自动飞刀",
["Range"] = "判定范围",
["Around"] = "周身范围",
["Behind"] = "身后范围",
["Backstab Type"] = "背刺平滑模式",
["lerp"] = "线性插值平滑",
["Glide Backstab"] = "平滑背刺自瞄",
["Aim at Killer's Side"] = "瞄准杀手侧身",
["Mode"] = "模式",
["Legit"] = "合法",
["Teleport"] = "传送",
["Aim Mode"] = "自瞄锁定模式",
["Character"] = "仅锁定角色",
["Character Only"] = "仅角色骨骼",
["Camera Only"] = "仅相机视角",
["Character"] = "相机",
["Camera"] = "角色",
["Prediction toggle"] = "预判开关",
["Prediction Strength"] = "预判强度",
["Prediction Time (sec)"] = "预判时长(秒)",
["Range (N)"] = "基础判定范围",
["Behind Distance"] = "身后判定距离",
["Lerp Speed"] = "平滑插值速度",
["Pre-Dagger Delay"] = "飞刀发射前置延迟",
["Running Zone (Red)"] = "奔跑检测区域(红色)",
["Run - Length"] = "奔跑区域-长度",
["Run - Width"] = "奔跑区域-宽度",
["Run - Height"] = "奔跑区域-高度",
["Duration"] = "自瞄持续时长",
["Smooth Speed"] = "自瞄平滑速度",
["Search"] = "搜索",
["Progress"] = "进度",
["Mission Folder"] = "任务文件夹",
["Miscellaneous and fun features"] = "各类趣味附加功能",
["Impersonation"] = "身份伪装",
["Player Username"] = "玩家用户名",
["Impersonate Player"] = "伪装该玩家",
["Device Impersonation"] = "设备伪装",
["Spoof Device"] = "伪造设备信息",
["Select Device"] = "选择设备",
["Console"] = "控制台",
["UI interface settings"] = "用户界面设置",
["Menu"] = "菜单",
["Open Keybind Menu"] = "打开快捷键菜单",
["Custom Cursor"] = "自定义鼠标光标",
["Notification Position"] = "通知弹窗位置",
["Right"] = "右侧",
["DPI Scaling"] = "DPI缩放",
["100%"] = "100%",
["Menu Keybind"] = "菜单呼出快捷键",
["RightShift"] = "右Shift键",
["Unload"] = "卸载注",
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato5466794/Nolsaken/refs/heads/main/EN/Nolsaken.lua"))()
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
