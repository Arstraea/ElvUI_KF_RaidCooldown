local E, L, V, P, G, _ = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("ElvUI", "enUS", true);

if not L then return; end

	local KFRC = E:GetModule('KF_RaidCooldown')
	function KFRC:ClassColor(class, name)
		local ccolor = RAID_CLASS_COLORS[class]
		return format("|cff%02x%02x%02x%s", ccolor.r*255, ccolor.g*255, ccolor.b*255, name)
	end

	--Raid Cooldown
	L["RaidCooldown"] = true
	L["Show group member's spell cooldown that is affect to raid."] = true
	L["raid"] = true
	L["party"] = true
	L["battleground"] = true

	L['Warrior'] = KFRC:ClassColor('WARRIOR', 'Warrior')	-- add color to localized class name
		L['Arms'] = true	-- specialization
		L['Fury'] = true
		L['WProtection'] = 'Protection'
	L['Hunter'] = KFRC:ClassColor('HUNTER', 'Hunter')
		L['Beast'] = true
		L['Marksmanship'] = true
		L['Survival'] = true
	L['Shaman'] = KFRC:ClassColor('SHAMAN', 'Shaman')
		L['Elemental'] = true
		L['Enhancement'] = true
		L['SRestoration'] = 'Resotration'
	L['Monk'] = KFRC:ClassColor('MONK', 'Monk')
		L['Brewmaster'] = true
		L['Mistweaver'] = true
		L['Windwalker'] = true
	L['Rogue'] = KFRC:ClassColor('ROGUE', 'Rogue')
		L['Assassination'] = true
		L['Combat'] = true
		L['Subtlety'] = true
	L['Death Knight'] = KFRC:ClassColor('DEATHKNIGHT', 'Death Knight')
		L['Blood'] = true
		L['Frost'] = true
		L['Unholy'] = true
	L['Mage'] = KFRC:ClassColor('MAGE', 'Mage')
		L['Arcane'] = true
		L['Fire'] = true
		L['Frost'] = true
	L['Druid'] = KFRC:ClassColor('DRUID', 'Druid')
		L['Balance'] = true
		L['Feral'] = true
		L['Guardian'] = true
		L['DRestoration'] = 'Restoration'
	L['Paladin'] = KFRC:ClassColor('PALADIN', 'Paladin')
		L['Holy'] = true
		L['PProtection'] = 'Protection'
		L['Retribution'] = true
	L['Priest'] = KFRC:ClassColor('PRIEST', 'Priest')
		L['Discipline'] = true
		L['Shadow'] = true
	L['Warlock'] = KFRC:ClassColor('WARLOCK', 'Warlock')
		L['Affliction'] = true
		L['Demonology'] = true
		L['Destruction'] = true
	
	L['Tanker'] = true
	L['Healer'] = true
	L['Caster'] = true
	L['Melee'] = true
		
	L["KFRC_Inspect_Desc"] = "|cffceff00Inspect Setting|r : This addon will inspect group member's specialization, talent, and glyph setting for getting exact spell cooltime."
		L["AutoInspect"] = true
			L["When you checked this option, RaidCooldown will inspect each group members continuously at an interval of throttle option's time."] = true
		L["Throttle"] = true
			L["This option will affect checking members's interval. |cffceff00(second)"] = true
		L["AutoInspect By Member's Change"] = true
			L["When you checked this option, RaidCooldown will inspect each group members when group member is changed."] = true
		L["AutoInspect By Commander's Ready Check."] = true
			L["When you checked this option, RaidCooldown will inspect each group members when Ready check activate."] = true
			
	L["KFRC_Announce_Desc"] = "|cffceff00Announce Setting|r : You can setting many types of alarm function."
		L["Cooldown End Announce"] = true
			L["When cooldown is end, Add-On will announce that skill is able to cast."] = true
		L["Send Channel"] = true
			L["Announce will send this option's selected channel."] = true
			L["Self"] = true
			L["Say"] = true
			L["Party"] = true
			L["Raid"] = true
			L["Guild"] = true
			L["Officer"] = true
			L[" user's "] = true
			L[" enable to cast."] = true
		L["Intterupt Announce"] = true
			L["When group member interrupt enemy, Add-On will announce."] = true

	L['Right Click'] = " |cff2eb7e4Right Click"
	L['Delete this spell cooltime bar.'] = "|cffffffffDelete this spell cooltime bar"
	L['Right Click + Hold Shift'] = " |cff2eb7e4Shift|cffffffff + |cff2eb7e4Right Click"
	L['Config to hide this spell all.'] = "|cffffffffConfig to hide this spell all"
	L['Reset skills that have a cool time more than 5 minutes'] = true
	
	L['Castable User'] = "|cff1784d1<<|r|cffffffff Castable User |cff1784d1>>"
	L['Enable To Cast'] = true
	L['Lock Display Window'] = "|cffceff00Lock|r Display Window"
	L['Unlock Display Window'] = "|cffff5353Unlock|r Display Window"
		
	L["Appearance Setting"] = true
		L["KFRC_Appearance_Bar_Desc"] = "|cffceff00Cooltime Bar Setting|r : This option will affect cooltime bar's appearance."
			L["Bar Direction"] = true
			L["Direction of cooltime bar arranging."] = true
			L["Bar Height"] = true
			L["Bar Spacing"] = true
			L["Spacing Slider between each user's cooldown bar."] = true
			L["UserName Fontsize"] = true
		L["KFRC_Appearance_RaidIcon_Desc"] = "|cffceff00Raid Icon Setting|r : This option will affect raid survival spell's appearance."
											-- In Korea, we call "Raid Survival Spell". (spell which Paladin's [Devotion Aura], Druid's [Tranquility])
			L["Raid Icon Size"] = true
			L["Raid Icon Spacing"] = true
			L["Raid Icon Location"] = true
				L["choose location of raid icon."] = true
				L['LEFTSIDE of MainFrame'] = true
				L['RIGHTSIDE of MainFrame'] = true
			L["Raid Icon Direction"] = true
				L["Direction of raid icon arranging."] = true
				L['UP'] = true
				L['DOWN'] = true
				L['UPPER'] = true
				L['BELOW'] = true
			L["Raid Icon Font Size"] = true
			L["Show Max"] = true
				L["Show max number of each skills in your group in icon."] = true
	
	L["Skill Setting"] = "|cffceff00Skill Setting|r |cffffffff:|r "
		L["When you checked "] = true
		L["spell below, only checked spell will display the cooltime bar."] = '|r'.."spell below, only checked spell will display the cooltime bar."
		L["Survival"] = "|cff1784d1<<|r Survival |cff1784d1>>"	-- Spell which affect to survive (like Warrior's Shield Wall)
		L["Interrupt"] = "|cff1784d1<<|r Interrupt |cff1784d1>>"	-- Spell which have Interrupt function.
		L["Utility"] = "|cff1784d1<<|r Utility |cff1784d1>>"	-- valuable spell list to check.