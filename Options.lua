local E, L, V, P, G, _  = unpack(ElvUI)
local KFRC = E:GetModule('KF_RaidCooldown')
	
	KFRC.TalentTable = {
		['WARRIOR'] = {
			[select(2, GetSpecializationInfoByID(71))] = {	--무기
				['C'] = '|cff9a9a9a',	-- C means Color. I choose each specialization's color by my individual decision... -_-;;
				['R'] = L["Melee"],		-- R means Role.
			},
			[select(2, GetSpecializationInfoByID(72))] = {	--분노
				['C'] = '|cffb50000',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(73))] = {	--방어
				['C'] = '|cff088fdc',
				['R'] = L["Tanker"],
			},
		},
		['PALADIN'] = {
			[select(2, GetSpecializationInfoByID(65))] = {	--신성
				['C'] = '|cfff48cba',
				['R'] = L["Healer"],
			},		
			[select(2, GetSpecializationInfoByID(66))] = {	--보호
				['C'] = '|cff198cee',
				['R'] = L["Tanker"],
			},
			[select(2, GetSpecializationInfoByID(70))] = {	--징벌
				['C'] = '|cffe60000',
				['R'] = L["Melee"],
			},
		},
		['HUNTER'] = {
			[select(2, GetSpecializationInfoByID(253))] = {	--야수
				['C'] = '|cffffdb00',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(254))] = {	--사격
				['C'] = '|cffea5455',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(255))] = {	--생존
				['C'] = '|cffbaf71d',
				['R'] = L["Melee"],
			},
		},
		['ROGUE'] = {
			[select(2, GetSpecializationInfoByID(259))] = {	--암살
				['C'] = '|cff129800',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(260))] = {	--전투
				['C'] = '|cffbc0001',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(261))] = {	--잠행
				['C'] = '|cfff48cba',
				['R'] = L["Melee"],
			},
		},
		['PRIEST'] = {
			[select(2, GetSpecializationInfoByID(256))] = {	--수양
				['C'] = '|cffffffff',
				['R'] = L["Healer"],
			},
			[select(2, GetSpecializationInfoByID(257))] = {	--신성
				['C'] = '|cff6bdaff',
				['R'] = L["Healer"],
			},
			[select(2, GetSpecializationInfoByID(258))] = {	--암흑
				['C'] = '|cff7e52c1',
				['R'] = L["Caster"],
			},
		},
		['DEATHKNIGHT'] = {
			[select(2, GetSpecializationInfoByID(250))] = {	--혈기
				['C'] = '|cffbc0001',
				['R'] = L["Tanker"],
			},
			[select(2, GetSpecializationInfoByID(251))] = {	--냉기
				['C'] = '|cff1784d1',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(252))] = {	--부정
				['C'] = '|cff00ff10',
				['R'] = L["Melee"],
			},
		},
		['SHAMAN'] = {
			[select(2, GetSpecializationInfoByID(262))] = {	--정기
				['C'] = '|cff2be5fa',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(263))] = {	--고양
				['C'] = '|cffe60000',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(264))] = {	--복원
				['C'] = '|cff00ff0c',
				['R'] = L["Healer"],
			},
		},
		['MAGE'] = {
			[select(2, GetSpecializationInfoByID(62))] = {	--비전
				['C'] = '|cffdcb0fb',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(63))] = {	--화염
				['C'] = '|cffff3615',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(64))] = {	--냉기
				['C'] = '|cff1784d1',
				['R'] = L["Caster"],
			},
		},
		['WARLOCK'] = {
			[select(2, GetSpecializationInfoByID(265))] = {	--고통
				['C'] = '|cff00ff10',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(266))] = {	--악마
				['C'] = '|cff9482c9',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(267))] = {	--파괴
				['C'] = '|cffba1706',
				['R'] = L["Caster"],
			},
		},
		['MONK'] = {
			[select(2, GetSpecializationInfoByID(268))] = {	--양조
				['C'] = '|cffbcae6d',
				['R'] = L["Tanker"],
			},
			[select(2, GetSpecializationInfoByID(269))] = {	--풍운
				['C'] = '|cffb2c6de',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(270))] = {	--운무
				['C'] = '|cffb6f1b7',
				['R'] = L["Healer"],
			},
		},
		['DRUID'] = {
			[select(2, GetSpecializationInfoByID(102))] = {	--조화
				['C'] = '|cffff7d0a',
				['R'] = L["Caster"],
			},
			[select(2, GetSpecializationInfoByID(103))] = {	--야성
				['C'] = '|cffffdb00',
				['R'] = L["Melee"],
			},
			[select(2, GetSpecializationInfoByID(104))] = {	--수호
				['C'] = '|cff088fdc',
				['R'] = L["Tanker"],
			},
			[select(2, GetSpecializationInfoByID(105))] = {	--회복
				['C'] = '|cff64df62',
				['R'] = L["Healer"],
			},
		},
	}
	
	if not E.db.RaidCooldown then E.db.RaidCooldown = {} end
	
	if E.db.RaidCooldown.Enable == false then
		E.Options.args.RaidCooldown = {
			name = " - |cffceff00"..L["RaidCooldown"],
			type = "group",
			order = -1,
			childGroups = "select",
			args = {
				Enable = {
					name = " |cffceff00"..L["RaidCooldown"].."|cffffffff "..L['Enable'],
					type = 'toggle',
					order = 1,
					get = function(info)
						return E.db.RaidCooldown.Enable
					end,
					set = function(info, value)
						E.db.RaidCooldown.Enable = value
						StaticPopup_Show("CONFIG_RL")
					end,
				},
			},
		}
	else
		E.Options.args.RaidCooldown = {
			name = " - |cffceff00"..L["RaidCooldown"],
			type = "group",
			order = -1,
			childGroups = "select",
			args = {
				Enable = {
					name = " |cffceff00"..L["RaidCooldown"].."|cffffffff "..L['Enable'],
					type = 'toggle',
					order = 1,
					get = function(info)
						return E.db.RaidCooldown.Enable
					end,
					set = function(info, value)
						E.db.RaidCooldown.Enable = value
						StaticPopup_Show("CONFIG_RL")
					end,
				},
				General= {
					name = "|cffffffff"..L["General"],
					type = "group",
					order = 2,
					args = {
						Desc = {
							order = 1,
							type = "description",
							name = L["KFRC_Inspect_Desc"],
						},
						AutoInspect = {
							name = " |cff2eb7e4"..L["AutoInspect"],
							desc = L["When you checked this option, RaidCooldown will inspect each group members continuously at an interval of throttle option's time."],
							type = 'toggle',
							order = 2,
							get = function(info) return E.db.RaidCooldown.General.AutoInspect end,
							set = function(info, value) E.db.RaidCooldown.General.AutoInspect = value end,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						Throttle = {
							order = 3,
							type = 'range',
							name = " |cff2eb7e4"..L["Throttle"],
							desc = L["This option will affect checking members's interval. |cffceff00(second)"],
							get = function(info) return E.db.RaidCooldown.General.Throttle end,
							set = function(info, value) E.db.RaidCooldown.General.Throttle = value end,
							disabled = function() return E.db.RaidCooldown.General.AutoInspect == false end,
							min = 10, max = 300, step = 1,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						AutoInspectByMembersChange = {
							name = " |cff2eb7e4"..L["AutoInspect By Member's Change"],
							desc = L["When you checked this option, RaidCooldown will inspect each group members when group member is changed."],
							type = 'toggle',
							order = 4,
							get = function(info) return E.db.RaidCooldown.General.AutoInspectByMembersChange end,
							set = function(info, value) E.db.RaidCooldown.General.AutoInspectByMembersChange = value end,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						AutoInspectByReadyCheck = {
							name = " |cff2eb7e4"..L["AutoInspect By Commander's Ready Check."],
							desc = L["When you checked this option, RaidCooldown will inspect each group members when Ready check activate."],
							type = 'toggle',
							order = 5,
							get = function(info) return E.db.RaidCooldown.General.AutoInspectByReadyCheck end,
							set = function(info, value)
								E.db.RaidCooldown.General.AutoInspectByReadyCheck = value
								if value == false then
									KFRC:UnregisterEvent('READY_CHECK')
								else
									KFRC:RegisterEvent('READY_CHECK', 'ForceCheck')
								end
							end,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						Header2 = {
							order = 50,
							type = "header",
							name = "",
						},
						Desc2 = {
							order = 51,
							type = "description",
							name = L["KFRC_Announce_Desc"],
						},
						CooldownEndAnnounceEnable = {
							name = " |cff2eb7e4"..L["Cooldown End Announce"]..' '..L["Enable"],
							desc = L["When cooldown is end, Add-On will announce that skill is able to cast."],
							type = 'toggle',
							order = 52,
							get = function(info) return E.db.RaidCooldown.General.CooldownEndAnnounceEnable end,
							set = function(info, value) E.db.RaidCooldown.General.CooldownEndAnnounceEnable = value end,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						CooldownEndAnnounceChannel = {
							name = " |cff2eb7e4"..L["Cooldown End Announce"]..' '..L["Send Channel"],
							desc = L["Announce will send this option's selected channel."],
							type = "select",
							order = 53,
							get = function(info) return E.db.RaidCooldown.General.CooldownEndAnnounceChannel end,
							set = function(info, value) E.db.RaidCooldown.General.CooldownEndAnnounceChannel = value end,
							values = function()
								local ChatTable = {
									L["Self"],
									L["Say"],
									L["Party"],
									L["Raid"],
									L["Guild"],
									L["Officer"],
								}
								local List = {GetChannelList()}
								for i = 1, #List/2 do
									ChatTable[i+6] = List[i*2-1]..'. '..List[i*2]
								end
								return ChatTable
							end,
							disabled = function() return E.db.RaidCooldown.Enable == false or E.db.RaidCooldown.General.CooldownEndAnnounceEnable == false end,
						},
						IntteruptAnnounceEnable = {
							name = " |cff2eb7e4"..L["Intterupt Announce"]..' '..L["Enable"],
							desc = L["When group member interrupt enemy, Add-On will announce."],
							type = 'toggle',
							order = 54,
							get = function(info) return E.db.RaidCooldown.General.IntteruptAnnounceEnable end,
							set = function(info, value) E.db.RaidCooldown.General.IntteruptAnnounceEnable = value end,
							disabled = function() return E.db.RaidCooldown.Enable == false end,
						},
						IntteruptAnnounceChannel = {
							name = " |cff2eb7e4"..L["Intterupt Announce"]..' '..L["Send Channel"],
							desc = L["Announce will send this option's selected channel."],
							type = "select",
							order = 55,
							get = function(info) return E.db.RaidCooldown.General.IntteruptAnnounceChannel end,
							set = function(info, value) E.db.RaidCooldown.General.IntteruptAnnounceChannel = value end,
							values = function()
								local ChatTable = {
									L["Self"],
									L["Say"],
									L["Party"],
									L["Raid"],
									L["Guild"],
									L["Officer"],
								}
								local List = {GetChannelList()}
								for i = 1, #List/2 do
									ChatTable[i+6] = List[i*2-1]..'. '..List[i*2]
								end
								return ChatTable
							end,
							disabled = function() return E.db.RaidCooldown.Enable == false or E.db.RaidCooldown.General.IntteruptAnnounceEnable == false end,
						},
					},
				},
				Appearance = {
					name = "|cffffffff"..L["Appearance Setting"],
					type = "group",
					order = 3,
					disabled = function() return E.db.RaidCooldown.Enable == false end,
					get = function(info) return E.db.RaidCooldown.Appearance[ info[#info] ] end,
					set = function(info, value) E.db.RaidCooldown.Appearance[ info[#info] ] = value end,
					args = {
						Desc = {
							order = 1,
							type = "description",
							name = L["KFRC_Appearance_Bar_Desc"],
						},
						barDirection = {
							order = 2,
							type = 'select',
							name = " |cff2eb7e4"..L["Bar Direction"],
							desc = L["Direction of cooltime bar arranging."],
							set = function(info, value)	E.db.RaidCooldown.Appearance.barDirection = value KFRC:ChangeArea() KFRC:RearrangeBar() end,
							values = {
								L['UP'],
								L['DOWN'],
							},
						},
						barHeight = {
							order = 3,
							type = 'range',
							name = " |cff2eb7e4"..L["Bar Height"],
							set = function(info, value) E.db.RaidCooldown.Appearance.barHeight = value KFRC:RearrangeBar() end,
							min = 10, max = 30, step = 1,
						},
						userNameFontsize = {
							order = 4,
							type = 'range',
							name = " |cff2eb7e4"..L["UserName Fontsize"],
							set = function(info, value) E.db.RaidCooldown.Appearance.userNameFontsize = value KFRC:RearrangeBar() end,
							min = 10, max = 30, step = 1,
						},
						Header = {
							order = 5,
							type = "header",
							name = "",
						},
						Desc2 = {
							order = 6,
							type = "description",
							name = L["KFRC_Appearance_RaidIcon_Desc"],
						},
						RaidIconSize = {
							order = 7,
							type = 'range',
							name = " |cff2eb7e4"..L["Raid Icon Size"],
							--get = function(info) return E.db.RaidCooldown.Appearance.RaidIconSize end,
							set = function(info, value) E.db.RaidCooldown.Appearance.RaidIconSize = value KFRC:RearrangeIcon() KFRC:RearrangeBar() end,
							min = 20, max = 60, step = 1,
						},
						RaidIconSpacing = {
							order = 8,
							type = 'range',
							name = " |cff2eb7e4"..L["Raid Icon Spacing"],
							--get = function(info) return E.db.RaidCooldown.Appearance.RaidIconSpacing end,
							set = function(info, value) E.db.RaidCooldown.Appearance.RaidIconSpacing = value KFRC:RearrangeIcon() end,
							min = 1, max = 30, step = 1,
						},
						RaidIconLocation = {
							name = " |cff2eb7e4"..L["Raid Icon Location"],
							desc = L["choose location of raid icon."],
							type = "select",
							order = 9,
							values = {
								L['LEFTSIDE of MainFrame'],
								L['RIGHTSIDE of MainFrame'],
							},
							set = function(info, value) E.db.RaidCooldown.Appearance.RaidIconLocation = value KFRC:ChangeArea() KFRC:RearrangeIcon() end,
						},
						RaidIconDirection = {
							name = " |cff2eb7e4"..L["Raid Icon Direction"],
							desc = L["Direction of raid icon arranging."],
							type = "select",
							order = 10,
							values = {
								L['UP'],
								L['DOWN'],
								L['UPPER'],
								L['BELOW'],
							},
							set = function(info, value) E.db.RaidCooldown.Appearance.RaidIconDirection = value KFRC:RearrangeIcon() KFRC:RearrangeBar() end,
						},
						RaidIconFontsize = {
							order = 11,
							type = 'range',
							name = " |cff2eb7e4"..L["Raid Icon Font Size"],
							min = 10, max = 30, step = 1,
						},
						ShowMax = {
							name = " |cff2eb7e4"..L["Show Max"],
							desc = L["Show max number of each skills in your group in icon."],
							type = 'toggle',
							order = 12,
						},
					},
				},
			},
		}

		local classTable, spellIDTable, ChangeLocal = {}, {}, {}
		FillLocalizedClassList(ChangeLocal)
		for classTemp in pairs(KFRC.RaidSpell) do
			classTable[#classTable + 1] = classTemp
		end
		for i, className in pairs(classTable) do
			wipe(spellIDTable)
			for ID in pairs(KFRC.RaidSpell[className]) do
				spellIDTable[#spellIDTable + 1] = ID
			end
			local class = {
				name = L["Skill Setting"]..KFRC:ClassColor(className, ChangeLocal[className]),
				type = "group",
				order = 3 + i,
				disabled = function() return E.db.RaidCooldown.Enable == false end,
				get = nil,
				set = nil,
				args = {
					DESC = {
						order = 1,
						type = "description",
						name = L["Skill Setting"]..L["When you checked "]..KFRC:ClassColor(className, ChangeLocal[className])..L["spell below, only checked spell will display the cooltime bar."],
					},
					Header = {
						order = 2,
						type = "header",
						name = L["Survival"],
					},
					Blank = {
						order = 399,
						type = "description",
						name = "|n",
					},
					Header2 = {
						order = 400,
						type = "header",
						name = L["Interrupt"],
					},
					Blank2 = {
						order = 699,
						type = "description",
						name = "|n",
					},
					Header3 = {
						order = 700,
						type = "header",
						name = L["Utility"],
					},
				},
			}
			P["RaidCooldown"][className] = {}
			for i, spellID in pairs(spellIDTable) do
				local temp = {}
				local IsInDefaultTable = false
				local spell = {
					name = "|T"..GetSpellTexture(spellID)..":20:20:2:0|t |cff2eb7e4"..select(1, GetSpellInfo(spellID)),
					desc = function(value, event)
						KFRC:HookScript(GameTooltip, 'OnShow', function(self, ...)
							GameTooltip:SetHyperlink(GetSpellLink(spellID))
							GameTooltip:Show()
							KFRC:Unhook(GameTooltip, 'OnShow')
						end)
					end,
					type = 'toggle',
					order = (KFRC.RaidSpell[className][spellID][3] == 1 and 2 or KFRC.RaidSpell[className][spellID][3] == 2 and 400 or 700) + i,
				}
				class.args[tostring(spellID)] = spell
				for _, spell in pairs(KFRC.DefaultTrueSpell[className]) do
					if spell == spellID then
						IsInDefaultTable = true
						break
					end
				end
				if IsInDefaultTable == true then
					P["RaidCooldown"][className][tostring(spellID)] = true
				else
					P["RaidCooldown"][className][tostring(spellID)] = false
				end
			end
			E.Options.args.RaidCooldown.args[className] = class
			E.Options.args.RaidCooldown.args[className].get = function(info) return E.db.RaidCooldown[className][ info[#info] ] end
			E.Options.args.RaidCooldown.args[className].set = function(info, value) E.db.RaidCooldown[className][ info[#info] ] = value KFRC:RearrangeBar() end
		end
		KFRC.DefaultTrueSpell = nil
	end