# Pause Menu
Menu megnyitása:
- Escape vagy P gomb

Beállítások:
> Magyar
```
config = {
    discordLink = "url", -- Set discrod link
    discord_Webhook = "webhook_url",
    discord_WebhookName = "Report Rendszer",
    discord_footer_message = "Jelentést írta: ",
    discord_WebhookColor = 16753920, -- Only decimal color
    discord_error_message = "Helytelen forma!",

    ServerName = 'ExampleRoleplay', -- Server Name
    server_language = 'hu', -- en or hu

    -- Section Names and text
    Sections = {
        News = {
            title = 'Hírek', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- News Section

        Updates = {
            title = 'Frissítések', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Updates Section

        CharacterInfo = {
            title = 'Karakter Információ', 
        }, -- Charachter Information Section
        
        Rules = {
            title = 'Szabályok', 
        }, -- Rules Section

        Report = {
            title = 'Jelentés', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Report Section

        DiscordSection = {
            title = 'Discord', 
            text = 'Csatlakozz a discord szerverhez!'
        }, -- Discord Section

        SubmitSection = {
            title = 'Küldés', 
            text = 'Jelentés küldése!'
        }, -- Submit Section

        CustomSection = {
            title = 'Custom Szekció', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Submit Section

    },


    -- Set Button title and text
    Buttons = {
        MapSection = {
            title = 'Térkép', 
            text = 'Térkép megnyitása!'
        }, 
        SettingsSection = {
            title = 'Beállítások', 
            text = 'Beállítás megnyitása!'
        },
        ResumeSection = {
            title = 'Folytatás', 
            text = 'Játék folytatása!'
        },
        DisconnectSection = {
            title = 'Kilépés', 
            text = 'Visztlát!'
        },
    },

    -- Set rules
    rules = {
        -- First Rule
        {
            title = 'Szabály 1',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Second Rule
        {
            title = 'Szabály 2',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Third Rule
        {
            title = 'Szabály 3',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },
    },

    -- Set placeholder text
    placeHolders = {
        text = "Kérlek írd le, hogy mi a baj a szerverrel...",
        title = "Cím...",
    },

    time = {
        text = "perce"
    }
}
```

> Angol
```
config = {
    discordLink = "url", -- Set discrod link
    discord_Webhook = "webhook_url",
    discord_WebhookName = "ReportSystem",
    discord_footer_message = "Reported by ",
    discord_WebhookColor = 16753920, -- Only decimal color
    discord_error_message = "Invalid form!",

    ServerName = 'ExampleRoleplay', -- Server Name
    server_language = 'en', -- en or hu

    -- Section Names and text
    Sections = {
        News = {
            title = 'News', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- News Section

        Updates = {
            title = 'Updates', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Updates Section

        CharacterInfo = {
            title = 'Character Information', 
        }, -- Charachter Information Section
        
        Rules = {
            title = 'Rules', 
        }, -- Rules Section

        Report = {
            title = 'Report', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Updates Section

        DiscordSection = {
            title = 'Discord', 
            text = 'Join our discord!'
        }, -- Discord Section

        SubmitSection = {
            title = 'Submit', 
            text = 'Send report to discord!'
        }, -- Submit Section

        CustomSection = {
            title = 'Custom Section', 
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Neque voluptas at recusandae.'
        }, -- Submit Section

    },


    -- Set Button title and text
    Buttons = {
        MapSection = {
            title = 'Map', 
            text = 'Show the map!'
        }, 
        SettingsSection = {
            title = 'Settings', 
            text = 'Open the settings!'
        },
        ResumeSection = {
            title = 'Resume', 
            text = 'Back to the game!'
        },
        DisconnectSection = {
            title = 'Disconnect', 
            text = 'Goodbye!'
        },
    },

    -- Set rules
    rules = {
        -- First Rule
        {
            title = 'Rule 1',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Second Rule
        {
            title = 'Rule 2',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },

        -- Third Rule
        {
            title = 'Rule 3',
            text = 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid perspiciatis quo error magni ad unde expedita possimus minima, itaque aspernatur dolores corporis, eius labore, laborum placeat voluptatibus id vitae nesciunt?'
        },
    },

    -- Set placeholder text
    placeHolders = {
        text = "Please write down what is the problem with the server...",
        title = "Set Title...",
    },

    time = {
        text = "minutes"
    }
}
```
### Kép:
![image](https://user-images.githubusercontent.com/100093093/218328937-91a2b76a-62f5-42e7-8951-5bb2ce2f50c3.png)
