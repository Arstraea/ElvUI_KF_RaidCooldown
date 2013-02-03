local E, L, V, P, G, _  = unpack(ElvUI);
local KFRC = E:GetModule('KF_RaidCooldown')

	P["RaidCooldown"] = {
		["Default Location"] = "TOPLEFTElvUIParentTOPLEFT11-258",
		["Enable"] = true,
		["General"] = {
			["AutoInspect"] = false,
			["Throttle"] = 60,
			["AutoInspectByMembersChange"] = true,
			["AutoInspectByReadyCheck"] = true,
			
			["CooldownEndAnnounceEnable"] = false,
			["CooldownEndAnnounceChannel"] = 1,
			["IntteruptAnnounceEnable"] = false,
			["IntteruptAnnounceChannel"] = 2,
		},
		["Appearance"] = {
			["AreaWidth"] = 395,
			["AreaHeight"] = 274,
			["AreaView"] = true,
			
			["barDirection"] = 2,
			["barHeight"] = 16,
			["userNameFontsize"] = 10,
			
			["RaidIconSize"] = 35,
			["RaidIconSpacing"] = 5,
			["RaidIconLocation"] = 1,
			["RaidIconDirection"] = 3,
			["RaidIconFontsize"] = 13,
			["ShowMax"] = true,
		},
	}
	
	KFRC.DefaultTrueSpell = {
		['WARRIOR'] = {
			97462, --재집결
			114030, --경계
			871, --방벽
			12975, --최저
			1160, --사기의 외침
			114207,--해골 깃발
		},
		['HUNTER'] = {
			19263, --공저
		},
		['SHAMAN'] = {
			108280, --치유해일 토템
			16190, --마나해일 토템
			98008, --정신고리 토템
			120668, --폭풍채찍 토템
		},
		['MONK'] = {
			115203, --강화주
			115213, --해악 방지
			115176, --명상
			116849, --기의 고치
			122783, --마법 해소
			115310, --재활
		},
		['ROGUE'] = {
			76577, --연막
			114018, --은폐의 장막
		},
		['DEATHKNIGHT'] = {
			48792, --얼인
			49222, --뼈의 보호막
			55233, --흡혈
			61999, --아군 되살리기
			48743, --죽음의 서약
			51052, --대마지
		},
		['MAGE'] = {
			45438, --얼방
		},
		['DRUID'] = {
			20484, --환생
			740, --평온
			106922, --우르속의 힘
			102342, --무쇠껍질
			22812, --나무 껍질
			61336, --생존본능
			77761, --쇄포
		},
		['PALADIN'] = {
			31821, --헌신의 오라
			6940, --희손
			86659, --고왕수:보기
			633, --신축
			498, --신의 가호
			1022, --보축
			642, --무적
			31850, --헌수
		},
		['PRIEST'] = {
			64843, --천찬
			62618, --방벽
			33206, --고억
			47788, --수호영혼
			19236, --구원의 기도
		},
		['WARLOCK'] = {
			20707, --영석
		},
	}