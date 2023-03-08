config = {
    discordLink = "url", -- Set discrod link
    discord_Webhook = "webhook_url",
    discord_WebhookName = "Report Rendszer",
    discord_footer_message = "Jelentést írta: ",
    discord_WebhookColor = 16753920, -- Only decimal color
    discord_error_message = "Helytelen forma!",

    ServerName = 'Base Legacy', -- Server Name
    server_language = 'en', -- en or hu

    -- Section Names and text
    Sections = {
        News = {
            title = 'Nouvelles', 
            text = 'Soon...'
        }, -- News Section

        Updates = {
            title = 'Mises à jour', 
            text = 'Soon...'
        }, -- Updates Section

        CharacterInfo = {
            title = 'Informations sur le personnage', 
        }, -- Charachter Information Section
        
        Rules = {
            title = 'Règles', 
        }, -- Rules Section

        Report = {
            title = 'Report', 
            text = 'Soon...'
        }, -- Report Section

        DiscordSection = {
            title = 'Discord', 
            text = 'Rejoignez notre serveur discord !'
        }, -- Discord Section

        SubmitSection = {
            title = 'Envoi en cours', 
            text = 'Envoyez un rapport !'
        }, -- Submit Section

        CustomSection = {
            title = 'Rubrique personnalisée', 
            text = 'Soon...'
        }, -- Submit Section

    },


    -- Set Button title and text
    Buttons = {
        MapSection = {
            title = 'Carte', 
            text = 'Ouvrir la carte !'
        }, 
        SettingsSection = {
            title = 'Paramètres', 
            text = 'Ouvrir les paramètres !'
        },
        ResumeSection = {
            title = 'Reprendre', 
            text = 'Retourner en ville !'
        },
        DisconnectSection = {
            title = 'Déconnecter', 
            text = 'Quitter la ville !'
        },
    },

    -- Set rules
    rules = {
        -- First Rule
        {
            title = 'Règle 1',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Second Rule
        {
            title = 'Règle 2',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Third Rule
        {
            title = 'Règle 3',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },
    },

    -- Set placeholder text
    placeHolders = {
        text = "Veuillez décrire ce qui ne va pas avec le serveur...",
        title = "Titre...",
    },

    time = {
        text = "perce"
    }
}