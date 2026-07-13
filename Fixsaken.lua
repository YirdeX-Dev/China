local RunScriptFirst = false

local Translations = {
["Player Info"] = "玩家信息",
["ESP"] = "透视",
["Generator"] = "发电机",
["Player"] = "玩家",
["Aimbot"] = "自瞄",
["Block"] = "格挡",
["Action"] = "动作",
["Misc"] = "杂项",
["UI Settings"] = "UI设置",
["Settings"] = "设置",
["Info"] = "信息",
["Welcome to Fixsaken"] = "欢迎使用Fixsaken",
["Developer"] = "开发者",
["Owner And Developer"] = "拥有者与开发者",
["Contributor"] = "贡献者",
["Tester"] = "测试员",
["Executor"] = "执行器",
["Username"] = "用户名",
["User ID"] = "用户ID",
["Display Name"] = "显示名",
["Account Age"] = "账号年龄",
["days"] = "天",
["Killer"] = "杀手",
["Killer ESP"] = "杀手透视",
["Show Killer Name"] = "显示杀手名字",
["Show Killer Health"] = "显示杀手血量",
["Show Killer Skin"] = "显示杀手皮肤",
["Fill Transparency"] = "填充透明度",
["Outline Transparency"] = "边框透明度",
["Killer Color"] = "杀手颜色",
["Survivor"] = "幸存者",
["Survivor ESP"] = "幸存者透视",
["Show Survivor Name"] = "显示幸存者名字",
["Show Survivor Health"] = "显示幸存者血量",
["Show Survivor Skin"] = "显示幸存者皮肤",
["Survivor Color"] = "幸存者颜色",
["Items"] = "物品",
["Generator ESP"] = "发电机透视",
["Item ESP"] = "物品透视",
["Pizza ESP"] = "披萨透视",
["Tripwire ESP"] = "绊线透视",
["Mine ESP"] = "地雷透视",
["Respawn ESP"] = "重生点透视",
["Graffiti ESP"] = "涂鸦透视",
["Special"] = "特殊",
["Pizza Delivery ESP"] = "披萨外卖透视",
["Zombie ESP"] = "僵尸透视",
["Tracers"] = "射线",
["Generator Tracers"] = "发电机射线",
["Item Tracers"] = "物品射线",
["Pizza Tracers"] = "披萨射线",
["Pizza Delivery Tracers"] = "披萨外卖射线",
["Zombie Tracers"] = "僵尸射线",
["Tripwire Tracers"] = "绊线射线",
["Mine Tracers"] = "地雷射线",
["Respawn Tracers"] = "重生点射线",
["Names"] = "名称",
["Show Generator Name"] = "显示发电机名称",
["Show Item Name"] = "显示物品名称",
["Show Pizza Name"] = "显示披萨名称",
["Show Delivery Name"] = "显示外卖名称",
["Show Zombie Name"] = "显示僵尸名称",
["Show Tripwire Name"] = "显示绊线名称",
["Show Mine Name"] = "显示地雷名称",
["Show Respawn Name"] = "显示重生点名称",
["Show Graffiti Name"] = "显示涂鸦名称",
["Speed"] = "速度",
["Enable Speed"] = "开启加速",
["Flight"] = "飞行",
["Enable Flight"] = "开启飞行",
["Flight Speed"] = "飞行速度",
["Max Stamina"] = "最大体力",
["Sprint Speed"] = "冲刺速度",
["Stamina Gain Speed"] = "体力恢复速度",
["Stamina Loss Speed"] = "体力消耗速度",
["Extra"] = "额外",
["Delete Fake Noli"] = "删除假Noli",
["c00lkidd Dash Turn"] = "c00lkidd冲刺转身",
["Auto Break Free"] = "自动挣脱",
["Auto Pull Rope"] = "自动拉绳",
["Camera"] = "相机",
["Free Zoom"] = "自由缩放",
["Camera Noclip"] = "相机穿墙",
["Field of View"] = "视野",
["Enable FOV"] = "开启视野扩展",
["Lighting"] = "光照",
["Brightness"] = "亮度",
["No Shadows"] = "无阴影",
["No Fog"] = "无雾",
["Enable Lighting"] = "开启光照",
["Stamina"] = "体力",
["Infinite Stamina"] = "无限体力",
["Modify Max Stamina"] = "修改最大体力",
["Modify Stamina Gain"] = "修改体力恢复",
["Modify Stamina Loss"] = "修改体力消耗",
["Modify Sprint Speed"] = "修改冲刺速度",
["Auto Solve"] = "自动解谜",
["Auto Solve Speed"] = "自动解谜速度",
["General Aim"] = "常规自瞄",
["Aim Distance"] = "自瞄距离",
["Camera Smoothness"] = "相机平滑度",
["Lock Duration"] = "锁定持续时间",
["Silent Aim (Killer)"] = "无声自瞄 (杀手)",
["Sound Trigger Aim"] = "声音触发自瞄",
["Killer Aim"] = "杀手自瞄",
["1x4 Aim"] = "1x4自瞄",
["C00kidd Aim (Camera)"] = "C00kidd自瞄 (相机)",
["John Doe Aim (Camera)"] = "John Doe自瞄 (相机)",
["Nosferatu Aim (Camera)"] = "Nosferatu自瞄 (相机)",
["Noil Star Bomb Aim"] = "Noil星形炸弹自瞄",
["Noil Void Rush Aim"] = "Noil虚空冲刺自瞄",
["Survivor Aim"] = "幸存者自瞄",
["Jane Doe Aim"] = "Jane Doe自瞄",
["Jane Doe Axe Aim"] = "Jane Doe斧头自瞄",
["Chance Aim"] = "Chance自瞄",
["Dusekkar Aim (Camera)"] = "Dusekkar自瞄 (相机)",
["Punch Aim"] = "拳头自瞄",
["Auto Block"] = "自动格挡",
["Enable AutoBlock"] = "开启自动格挡",
["Detection Mode"] = "检测模式",
["Attribute"] = "属性",
["Hitbox Transparency"] = "判定框透明度",
["Hitbox Color"] = "判定框颜色",
["Hitbox Settings"] = "判定框设置",
["Hitbox Size"] = "判定框尺寸",
["Offset (Z)"] = "偏移 (Z)",
["Hitbox Duration"] = "判定框持续时间",
["Block Delay"] = "格挡延迟",
["Config"] = "配置",
["Menu"] = "菜单",
["Open Keybind Menu"] = "开启快捷键菜单",
["Custom Cursor"] = "自定义鼠标指针",
["Notification Side"] = "通知侧边栏",
["Right"] = "右侧",
["DPI Scale"] = "DPI缩放",
["100%"] = "100%",
["Menu bind"] = "菜单绑定",
["RightShift"] = "右Shift",
["Unload"] = "卸载",
["Themes"] = "主题",
["Background color"] = "背景颜色",
["Main color"] = "主色调",
["Configuration"] = "配置管理",
["Config name"] = "配置名称",
["Create config"] = "创建配置",
["Config list"] = "配置列表",
["Load config"] = "加载配置",
["Overwrite config"] = "覆盖配置",
["Delete config"] = "删除配置",
["Refresh list"] = "刷新列表",
["Set as autoload"] = "设为自动加载",
["Reset autoload"] = "重置自动加载",
["Current autoload config: none"] = "当前自动加载配置: 无",
["Impersonate"] = "伪装",
["Player Username"] = "玩家用户名",
["Impersonate Player"] = "伪装玩家",
["Front Flip"] = "前翻",
["Show Flip Button"] = "显示翻转按钮",
["Jump Height"] = "跳跃高度",
["Jump Distance"] = "跳跃距离",
["Chat"] = "聊天",
["Show Chat"] = "显示聊天",
["Anti Hidden Stats"] = "反隐藏属性",
["Anti Hidden Stats"] = "反隐藏属性",
["Killer Walls"] = "杀手墙壁",
["Disable Killer Walls"] = "禁用杀手墙壁",
["Timer Position"] = "计时器位置",
["Timer X Position"] = "计时器X位置",
["Emotes"] = "表情",
["Select Emote"] = "选择表情",
["lobserving"] = "观察中",
["Play Emote"] = "播放表情",
["Stop Emote"] = "停止表情",
["Player Animation"] = "玩家动画",
["Select Animation"] = "选择动画",
["SWAT Officer"] = "特警",
["Apply Animation"] = "应用动画",
["Stop Animation"] = "停止动画",
["Refresh List"] = "刷新列表"
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/FixFox550/FixFox/refs/heads/main/FixsakenV2"))()
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
