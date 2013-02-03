local E, L, V, P, G, _ = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("ElvUI", "koKR");

if not L then return; end

	local KFRC = E:GetModule('KF_RaidCooldown')
	function KFRC:ClassColor(class, name)
		local ccolor = RAID_CLASS_COLORS[class]
		return format("|cff%02x%02x%02x%s", ccolor.r*255, ccolor.g*255, ccolor.b*255, name)
	end
	
	--Raid Cooldown
	L["RaidCooldown"] = "레이드 쿨다운"
	L["Show group member's spell cooldown that is affect to raid."] = "공략에 있어 영향을 주는 파티원들 주요 주문들의 쿨다운을 표시합니다."
	L["raid"] = "레이드"
	L["party"] = "파티"
	L["battleground"] = "전장"

	L['Warrior'] = KFRC:ClassColor('WARRIOR', '전사')	-- add color to localized class name
		L['Arms'] = '무기'	-- specialization
		L['Fury'] = '분노'
		L['WProtection'] = '방어'
	L['Hunter'] = KFRC:ClassColor('HUNTER', '사냥꾼')
		L['Beast'] = '야수'
		L['Marksmanship'] = '사격'
		L['Survival'] = '생존'
	L['Shaman'] = KFRC:ClassColor('SHAMAN', '주술사')
		L['Elemental'] = '정기'
		L['Enhancement'] = '고양'
		L['SRestoration'] = '복원'
	L['Monk'] = KFRC:ClassColor('MONK', '수도사')
		L['Brewmaster'] = '양조'
		L['Mistweaver'] = '운무'
		L['Windwalker'] = '풍운'
	L['Rogue'] = KFRC:ClassColor('ROGUE', '도적')
		L['Assassination'] = '암살'
		L['Combat'] = '전투'
		L['Subtlety'] = '잠행'
	L['Death Knight'] = KFRC:ClassColor('DEATHKNIGHT', '죽음의 기사')
		L['Blood'] = '혈기'
		L['Frost'] = '냉기'
		L['Unholy'] = '부정'
	L['Mage'] = KFRC:ClassColor('MAGE', '마법사')
		L['Arcane'] = '비전'
		L['Fire'] = '화염'
		L['Frost'] = '냉기'
	L['Druid'] = KFRC:ClassColor('DRUID', '드루이드')
		L['Balance'] = '조화'
		L['Feral'] = '야성'
		L['Guardian'] = '수호'
		L['DRestoration'] = '회복'
	L['Paladin'] = KFRC:ClassColor('PALADIN', '성기사')
		L['Holy'] = '신성'
		L['PProtection'] = '보호'
		L['Retribution'] = '징벌'
	L['Priest'] = KFRC:ClassColor('PRIEST', '사제')
		L['Discipline'] = '수양'
		L['Shadow'] = '암흑'
	L['Warlock'] = KFRC:ClassColor('WARLOCK', '흑마법사')
		L['Affliction'] = '고통'
		L['Demonology'] = '악마'
		L['Destruction'] = '파괴'
	
	L['Tanker'] = '탱커'
	L['Healer'] = '힐러'
	L['Caster'] = '캐스터'
	L['Melee'] = '밀리'
		
	L["KFRC_Inspect_Desc"] = "|cffceff00Inspect Setting|r : This addon will inspect group member's specialization, talent, and glyph setting for getting exact spell cooltime."
		L["AutoInspect"] = "반복 살펴보기"
			L["When you checked this option, RaidCooldown will inspect each group members continuously at an interval of throttle option's time."] = "이 옵션을 체크하면, 마지막으로 체크한 시간에서 스로틀에서 설정한 시간이 흐르면 자동으로 멤버들을 살펴보기 합니다."
		L["Throttle"] = "스로틀"
			L["This option will affect checking members's interval. |cffceff00(second)"] = "자동 반복체크 기능의 시간 간격을 정합니다. |cffceff00(단위: 초)"
		L["AutoInspect By Member's Change"] = "멤버 변경시 실행"
			L["When you checked this option, RaidCooldown will inspect each group members when group member is changed."] = "이 옵션을 체크하면, 파티원이나 레이드원이 추가될 때마다 살펴보기를 실행합니다."
		L["AutoInspect By Commander's Ready Check."] = "전투 준비시 실행"
			L["When you checked this option, RaidCooldown will inspect each group members when Ready check activate."] = "이 옵션을 체크하면, 전투 준비를 할 때마다 살펴보기를 실행합니다."
			
	L["KFRC_Announce_Desc"] = "|cffceff00Announce Setting|r : You can setting many types of alarm function."
		L["Cooldown End Announce"] = "쿨다운 종료 알림"
			L["When cooldown is end, Add-On will announce that skill is able to cast."] = "표시된 쿨다운 바가 종료되면 자동으로 설정된 채널로 알려줍니다."
		L["Send Channel"] = "출력 채널"
			L["Announce will send this option's selected channel."] = "이 옵션에서 선택한 채널로 알림이 출력됩니다."
			L["Self"] = "자신만 보기"
			L["Say"] = "일반"
			L["Party"] = "파티말"
			L["Raid"] = "레이드"
			L["Guild"] = "길드"
			L["Officer"] = "길드관리자"
			L[" user's "] = " 님의 "
			L[" enable to cast."] = " 재사용 가능!"
		L["Intterupt Announce"] = "차단 알림"
			L["When group member interrupt enemy, Add-On will announce."] = "파티원이나 레이드멤버가 차단하면 알립니다."

	L['Right Click'] = " |cff2eb7e4우클릭"
	L['Delete this spell cooltime bar.'] = "|cffffffff해당 쿨타임 바 강제종료"
	L['Right Click + Hold Shift'] = " |cff2eb7e4Shift|cffffffff + |cff2eb7e4우클릭"
	L['Config to hide this spell all.'] = "|cffffffff주문표시 옵션 체크해제"
	L['Reset skills that have a cool time more than 5 minutes'] = "5분 이상 쿨타임을 가진 스킬들 리셋"
	
	L['Castable User'] = "|cff1784d1<<|r|cffffffff 시전 가능한 유저 |cff1784d1>>"
	L['Enable To Cast'] = "시전 가능"
	L['Lock Display Window'] = "표시 창 |cffceff00고정"
	L['Unlock Display Window'] = "표시 창 |cffff5353고정 해제"
		
	L["Appearance Setting"] = "외형 설정"
		L["KFRC_Appearance_Bar_Desc"] = "|cffceff00Cooltime Bar Setting|r : This option will affect cooltime bar's appearance."
			L["Bar Direction"] = "바 정렬방향"
			L["Direction of cooltime bar arranging."] = "쿨타임 바가 어느 방향을 향하여 나열할지 결정합니다."
			L["Bar Height"] = "바 높이"
			L["Bar Spacing"] = "바 사이간 간격"
			L["Spacing Slider between each user's cooldown bar."] = "유저간 쿨타임 바의 간격을 조절합니다."
			L["UserName Fontsize"] = "유저이름 폰트사이즈"
		L["KFRC_Appearance_RaidIcon_Desc"] = "|cffceff00Raid Icon Setting|r : This option will affect raid survival spell's appearance."
											-- In Korea, we call "Raid Survival Spell". (spell which Paladin's [Devotion Aura], Druid's [Tranquility])
			L["Raid Icon Size"] = "아이콘 사이즈"
			L["Raid Icon Spacing"] = "아이콘 사이 간격"
			L["Raid Icon Location"] = "아이콘 위치"
				L["choose location of raid icon."] = "메인프레임을 기준으로 레이드아이콘을 어느 방향에 위치할 건지 설정합니다."
				L['LEFTSIDE of MainFrame'] = "프레임 좌측"
				L['RIGHTSIDE of MainFrame'] = "프레임 우측"
			L["Raid Icon Direction"] = "아이콘 정렬방향"
				L["Direction of raid icon arranging."] = "아이콘이 어느 방향을 향하여 나열할지 결정합니다."
				L['UP'] = '위로 나열'
				L['DOWN'] = '아래로 나열'
				L['UPPER'] = '메인프레임 위에 나열'
				L['BELOW'] = '메인프레임 아래에 나열'
			L["Raid Icon Font Size"] = "표시 폰트 사이즈"
			L["Show Max"] = "스킬 보유수 표시"
				L["Show max number of each skills in your group in icon."] = "각 아이콘에 현재 파티가 사용할 수 있는 최대량을 표시합니다."
	
	L["Skill Setting"] = "|cffceff00스킬 설정|r |cffffffff:|r "
		L["When you checked "] = "체크된 "
		L["spell below, only checked spell will display the cooltime bar."] = "|r 주문들만 쿨타임 바로 표시합니다."
		L["Survival"] = "|cff1784d1<<|r 생존기 |cff1784d1>>"	-- Spell which affect to survive (like Warrior's Shield Wall)
		L["Interrupt"] = "|cff1784d1<<|r 차단기 |cff1784d1>>"	-- Spell which have Interrupt function.
		L["Utility"] = "|cff1784d1<<|r 유틸리티 |cff1784d1>>"	-- valuable spell list to check.