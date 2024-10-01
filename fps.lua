local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Lighting = game:GetService("Lighting")

-- Fonction pour appliquer des effets graphiques améliorés avec moins de lumière
local function ApplyBalancedGraphics()
    -- Réglages d'éclairage
    Lighting.Ambient = Color3.fromRGB(200, 200, 200) -- Couleur ambiante modérée
    Lighting.Brightness = 1 -- Luminosité générale réduite
    Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0) -- Couleur de fond
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255) -- Couleur du haut
    Lighting.FogColor = Color3.fromRGB(180, 180, 180) -- Couleur du brouillard
    Lighting.FogStart = 0 -- Début du brouillard
    Lighting.FogEnd = 1000 -- Fin du brouillard
    Lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180) -- Ambiance extérieure modérée
    Lighting.GlobalShadows = true -- Activer les ombres globales
    Lighting.ShadowSoftness = 0.3 -- Ajuster la douceur des ombres

    -- Effets de post-traitement
    local BloomEffect = Instance.new("BloomEffect")
    BloomEffect.Intensity = 0.4 -- Réduire l'intensité pour minimiser l'éblouissement
    BloomEffect.Size = 20
    BloomEffect.Threshold = 0.6 -- Ajuster le seuil
    BloomEffect.Parent = Lighting

    local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
    ColorCorrectionEffect.Brightness = 0.05 -- Réduire la luminosité
    ColorCorrectionEffect.Contrast = 0.1 -- Réduire le contraste
    ColorCorrectionEffect.Saturation = 0.2 -- Réduire la saturation
    ColorCorrectionEffect.Parent = Lighting

    local DepthOfFieldEffect = Instance.new("DepthOfFieldEffect")
    DepthOfFieldEffect.FocusDistance = 40 -- Ajuster pour une mise au point plus éloignée
    DepthOfFieldEffect.InFocusRadius = 15 -- Ajuster pour moins de flou
    DepthOfFieldEffect.Parent = Lighting

    local SunRaysEffect = Instance.new("SunRaysEffect")
    SunRaysEffect.Intensity = 0.1 -- Réduire l'intensité pour un effet plus subtil
    SunRaysEffect.Spread = 0.5 -- Ajuster l'étalement
    SunRaysEffect.Parent = Lighting

    -- Optionnel : Ajouter un effet de grain de film
    local FilmGrainEffect = Instance.new("FilmGrainEffect")
    FilmGrainEffect.Intensity = 0.05 -- Ajuster pour un léger effet de grain
    FilmGrainEffect.Parent = Lighting

    print("Effets graphiques équilibrés appliqués.")
end

-- Appliquer les effets graphiques
ApplyBalancedGraphics()