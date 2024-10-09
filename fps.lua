-- Fonction de booster de FPS
local function FPSBooster()
    -- Réduction de la qualité graphique pour améliorer les performances
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    
    -- Désactivation des effets de post-traitement pour améliorer les FPS
    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 0

    -- Désactivation des particules pour réduire l'utilisation des ressources
    local function disableParticles(instance)
        if instance:IsA("ParticleEmitter") or instance:IsA("Trail") then
            instance.Enabled = false
        end
    end

    -- Parcours de tous les objets du jeu pour désactiver les particules et effets inutiles
    for _, object in pairs(game:GetDescendants()) do
        disableParticles(object)
    end

    -- Connexion à la création future d'objets pour continuer à désactiver les particules
    game.DescendantAdded:Connect(disableParticles)

    print("FPS Booster activé : Paramètres graphiques ajustés pour des performances optimales")
end

-- Appel de la fonction pour booster les FPS
FPSBooster()
