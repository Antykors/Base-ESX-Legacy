# esx_socieyt/server/main.lua line 68 and line 99
* Withdraw
```LUA
TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
if amount > 0 and account.money >= amount then
	account.removeMoney(amount)
	xPlayer.addMoney(amount)
	xPlayer.showNotification(_U('have_withdrawn', ESX.Math.GroupDigits(amount)))

		local data = {
		['Player'] = xPlayer.source,
		['Log'] = 'society',
		['Title'] = 'Withdrawed society money',
		['Message'] = 'Player has withdrawed money from society: ``' .. societyName .. '``\nAmount: ``' .. amount .. '``'
		}

		TriggerEvent('Boost-Logs:SendLog', data)
	else
		xPlayer.showNotification(_U('invalid_amount'))
	end
end)
```
* Deposit
```LUA
if amount > 0 and xPlayer.getMoney() >= amount then
		TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
			xPlayer.removeMoney(amount)
			xPlayer.showNotification(_U('have_deposited', ESX.Math.GroupDigits(amount)))
			account.addMoney(amount)
			
			local data = {
			['Player'] = xPlayer.source,
			['Log'] = 'society',
			['Title'] = 'Deposited society money',
			['Message'] = 'Player has deposited money to society: ``' .. societyName .. '``\nAmount: ``' .. amount .. '``'
			}

			TriggerEvent('Boost-Logs:SendLog', data)
		end)
	else
		xPlayer.showNotification(_U('invalid_amount'))
end
```

