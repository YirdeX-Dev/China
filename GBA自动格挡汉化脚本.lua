local RunScriptFirst = false

local Translations = {
["RFS"] = "YirdeX汉化",
["Auto Block"] = "自动格挡",
["Anti Block Bait"] = "反格挡诱饵",
["Punch Aimbot"] = "拳头自瞄",
["Range Detection"] = "距离检测",
["Facing Detection"] = "朝向检测",
["Hibox Shake"] = "判定框抖动",
["Hitbox Range"] = "判定框范围",
["Hitbox Speed"] = "判定框速度",
["Anti Block Bait Method: Legit"] = "反格挡诱饵方式: 常规",
["Anti Block Bait Method: Blatant"] = "反格挡诱饵方式: 明显",
["Hitbox Duration"] = "判定框持续时间",
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
        loadstring(game:HttpGet("https://raw.githubusercontent.com/randomforsakenscripter/script/refs/heads/main/Guest1337/AutoBlock/V1.0"))()

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
