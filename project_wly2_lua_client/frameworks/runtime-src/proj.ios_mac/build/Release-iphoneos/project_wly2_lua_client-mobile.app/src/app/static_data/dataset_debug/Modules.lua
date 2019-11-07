local Modules={
['Module']=
{
	[0]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="建筑升级",
		['openMission']=0,
		['cmdName']="open_levelup",
		['ident']=0,
		['jumpType']=1,
		['jumpName']="升级",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="升级"
	},
	[1]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="征收",
		['openMission']=10102,
		['cmdName']="open_collection",
		['ident']=1,
		['jumpType']=1,
		['jumpName']="征收",
		['jumpIcon']="s03_000431.png",
		['jumpDescription']="岁征民间，收之国库，民富库实"
	},
	[2]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="国政",
		['openMission']=10305,
		['cmdName']="open_official",
		['ident']=2,
		['jumpType']=1,
		['jumpName']="官职",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="官职"
	},
	[3]=
	{
		['jumpObject']="0,3",
		['openLevel']=6,
		['name']="委任",
		['openMission']=0,
		['cmdName']="enter_build_officer",
		['ident']=3,
		['jumpType']=1,
		['jumpName']="委任",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="委任功能"
	},
	[4]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="国战",
		['openMission']=0,
		['cmdName']="enter_world",
		['ident']=4,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[5]=
	{
		['jumpObject']="31",
		['openLevel']=1,
		['name']="农场",
		['openMission']=0,
		['cmdName']="open_farm",
		['ident']=5,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[6]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="资源",
		['openMission']=0,
		['cmdName']="enter_resource",
		['ident']=6,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[7]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="建筑队列",
		['openMission']=0,
		['cmdName']="open_builder_list",
		['ident']=7,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[8]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="建筑信息",
		['openMission']=0,
		['cmdName']="open_build_info",
		['ident']=8,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[9]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="主公",
		['openMission']=0,
		['cmdName']="open_role",
		['ident']=9,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[10]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="聊天",
		['openMission']=0,
		['cmdName']="open_chat",
		['ident']=10,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[11]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="服务器列表",
		['openMission']=0,
		['cmdName']="open_server_list",
		['ident']=11,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[12]=
	{
		['jumpObject']="0,2",
		['openLevel']=6,
		['name']="政令",
		['openMission']=0,
		['cmdName']="open_decree",
		['ident']=12,
		['jumpType']=1,
		['jumpName']="政令",
		['jumpIcon']="03_0011.png",
		['jumpDescription']=""
	},
	[21]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="关卡",
		['openMission']=0,
		['cmdName']="enter_instance",
		['ident']=21,
		['jumpType']=3,
		['jumpName']="征战副本",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="挑战副本"
	},
	[22]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="普通副本跳转到建筑",
		['openMission']=0,
		['cmdName']="",
		['ident']=22,
		['jumpType']=1,
		['jumpName']="征战副本",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="挑战副本"
	},
	[41]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="主线任务",
		['openMission']=10101,
		['cmdName']="open_achievement",
		['ident']=41,
		['jumpType']=1,
		['jumpName']="主线任务",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="通关克敌，征伐有功，举之以赏"
	},
	[42]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="任务",
		['openMission']=10401,
		['cmdName']="open_task",
		['ident']=42,
		['jumpType']=1,
		['jumpName']="每日任务",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="每日获取活跃度奖励"
	},
	[43]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="活跃度",
		['openMission']=0,
		['cmdName']="",
		['ident']=43,
		['jumpType']=1,
		['jumpName']="今日活跃度",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="今日活跃度"
	},
	[2604]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="试练塔商店",
		['openMission']=10302,
		['cmdName']="open_shop",
		['ident']=2604,
		['jumpType']=1,
		['jumpName']="试练塔商店",
		['jumpIcon']="s03_00095.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']=3,
				['findState']="",
				['tabIndex']=""
			}
		},
		['jumpDescription']="试练塔商店"
	},
	[46]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="充值",
		['openMission']=0,
		['cmdName']="show_add_golden",
		['ident']=46,
		['jumpType']=1,
		['jumpName']="充值",
		['jumpIcon']="s03_00095.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']="",
				['findState']="",
				['tabIndex']=""
			}
		},
		['jumpDescription']="充值界面"
	},
	[47]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="特权",
		['openMission']=0,
		['cmdName']="show_add_golden",
		['ident']=47,
		['jumpType']=1,
		['jumpName']="特权",
		['jumpIcon']="s03_00096.png",
		['Param']=
		{

			{
				['index']=2,
				['subIndex']="",
				['findState']="",
				['tabIndex']=""
			}
		},
		['jumpDescription']="特权"
	},
	[51]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="邮件",
		['openMission']=0,
		['cmdName']="open_mail",
		['ident']=51,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[61]=
	{
		['jumpObject']="40",
		['openLevel']=1,
		['name']="排行",
		['openMission']=0,
		['cmdName']="open_rank",
		['ident']=61,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[1601]=
	{
		['jumpObject']="2",
		['openLevel']=1,
		['name']="酒馆",
		['openMission']=0,
		['cmdName']="open_tavern",
		['ident']=1601,
		['jumpType']=1,
		['jumpName']="酒馆",
		['jumpIcon']="s03_000506-5.png",
		['jumpDescription']="酒馆寻访"
	},
	[71]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="仓库",
		['openMission']=0,
		['cmdName']="open_warehouse",
		['ident']=71,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[75]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="分解",
		['openMission']=0,
		['cmdName']="open_decompose",
		['ident']=75,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="分解界面"
	},
	[81]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="阵型",
		['openMission']=10104,
		['cmdName']="open_formation",
		['ident']=81,
		['jumpType']=1,
		['jumpName']="阵型",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="变化阵型，迎击来敌"
	},
	[600]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="升级",
		['openMission']=0,
		['cmdName']="open_levelup",
		['ident']=600,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[602]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="装备",
		['openMission']=10505,
		['cmdName']="open_equipment",
		['ident']=602,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']="",
				['findState']="ture",
				['tabIndex']=1
			}
		},
		['jumpDescription']=""
	},
	[91]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="年份季节",
		['openMission']=0,
		['cmdName']="open_season",
		['ident']=91,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[604]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="登庸",
		['openMission']=0,
		['cmdName']="",
		['ident']=604,
		['jumpType']=1,
		['jumpName']="登庸",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="在野之士，登位入朝，任选所庸"
	},
	[100]=
	{
		['jumpObject']="0",
		['openLevel']=1,
		['name']="主城",
		['openMission']=0,
		['cmdName']="enter_main_city",
		['ident']=100,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[101]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将属性",
		['openMission']=0,
		['cmdName']="open_general_attribute",
		['ident']=101,
		['jumpType']=1,
		['jumpName']="武将属性",
		['jumpIcon']="s03_000506-4.png",
		['Param']=
		{

			{
				['index']=0,
				['subIndex']=1,
				['findState']="ture",
				['tabIndex']=1
			}
		},
		['jumpDescription']="武将属性"
	},
	[103]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将兵种",
		['openMission']=10402,
		['cmdName']="open_general_attribute",
		['ident']=103,
		['jumpType']=1,
		['jumpName']="武将兵种",
		['jumpIcon']="s03_000506-1.png",
		['Param']=
		{

			{
				['index']=0,
				['subIndex']=3,
				['findState']="ture",
				['tabIndex']=3
			}
		},
		['jumpDescription']="武将兵种"
	},
	[104]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将顿悟",
		['openMission']=10405,
		['cmdName']="open_general_attribute",
		['ident']=104,
		['jumpType']=1,
		['jumpName']="武将顿悟",
		['jumpIcon']="s03_000506-0.png",
		['Param']=
		{

			{
				['index']=0,
				['subIndex']=5,
				['findState']="ture",
				['tabIndex']=5
			}
		},
		['jumpDescription']="武将顿悟"
	},
	[105]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将图鉴",
		['openMission']=10305,
		['cmdName']="open_map_guide",
		['ident']=105,
		['jumpType']=1,
		['jumpName']="武将图鉴",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="武将图鉴"
	},
	[106]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将品阶",
		['openMission']=10101,
		['cmdName']="open_general_attribute",
		['ident']=106,
		['jumpType']=1,
		['jumpName']="武将品阶",
		['jumpIcon']="s03_000506-2.png",
		['Param']=
		{

			{
				['index']=0,
				['subIndex']=4,
				['findState']="ture",
				['tabIndex']=4
			}
		},
		['jumpDescription']="武将品阶"
	},
	[107]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将收集",
		['openMission']=0,
		['cmdName']="open_general",
		['ident']=107,
		['jumpType']=1,
		['jumpName']="武将收集",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="武将收集"
	},
	[108]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将装备",
		['openMission']=10105,
		['cmdName']="open_general_attribute",
		['ident']=108,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_000506-3.png",
		['Param']=
		{

			{
				['index']=0,
				['subIndex']=2,
				['findState']="ture",
				['tabIndex']=2
			}
		},
		['jumpDescription']=""
	},
	[109]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将图鉴",
		['openMission']=10305,
		['cmdName']="open_map_guide_info",
		['ident']=109,
		['jumpType']=1,
		['jumpName']="武将图鉴",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="武将图鉴"
	},
	[111]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="强化",
		['openMission']=10105,
		['cmdName']="open_equip_action",
		['ident']=111,
		['jumpType']=1,
		['jumpName']="装备强化",
		['jumpIcon']="s03_00095.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']="",
				['findState']="ture",
				['tabIndex']=1
			}
		},
		['jumpDescription']=""
	},
	[112]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="铸造",
		['openMission']=0,
		['cmdName']="open_equip_action",
		['ident']=112,
		['jumpType']=1,
		['jumpName']="装备铸造",
		['jumpIcon']="s03_00096.png",
		['Param']=
		{

			{
				['index']=2,
				['subIndex']="",
				['findState']="ture",
				['tabIndex']=2
			}
		},
		['jumpDescription']=""
	},
	[113]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="洗炼",
		['openMission']=0,
		['cmdName']="open_equip_action",
		['ident']=113,
		['jumpType']=1,
		['jumpName']="装备洗炼",
		['jumpIcon']="s03_00095.png",
		['Param']=
		{

			{
				['index']=3,
				['subIndex']="",
				['findState']="ture",
				['tabIndex']=3
			}
		},
		['jumpDescription']=""
	},
	[124]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="武将阵型",
		['openMission']=10104,
		['cmdName']="open_formation",
		['ident']=124,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[125]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="战前布阵",
		['openMission']=0,
		['cmdName']="open_arrange_before_war",
		['ident']=125,
		['jumpType']=1,
		['jumpName']="战前布阵",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[3201]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="八门遁甲",
		['openMission']=10702,
		['cmdName']="open_fly_nail",
		['ident']=3201,
		['jumpType']=1,
		['jumpName']="八门遁甲",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="挂机赢取大量资源奖励"
	},
	[3202]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="八门遁甲",
		['openMission']=10702,
		['cmdName']="open_fly_nail_battle",
		['ident']=3202,
		['jumpType']=1,
		['jumpName']="八门遁甲",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[3203]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="八门遁甲",
		['openMission']=10702,
		['cmdName']="open_generals_select",
		['ident']=3203,
		['jumpType']=1,
		['jumpName']="八门遁甲",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[3204]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="八门遁甲",
		['openMission']=10702,
		['cmdName']="open_fly_nail_npc",
		['ident']=3204,
		['jumpType']=1,
		['jumpName']="八门遁甲",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[3205]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="八门遁甲",
		['openMission']=10702,
		['cmdName']="open_strange_door",
		['ident']=3205,
		['jumpType']=1,
		['jumpName']="八门遁甲",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[3211]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="百战练兵场",
		['openMission']=0,
		['cmdName']="open_drill",
		['ident']=3211,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[2701]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="古城探秘",
		['openMission']=10905,
		['cmdName']="enter_ancient_city",
		['ident']=2701,
		['jumpType']=1,
		['jumpName']="古城探秘玩法",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="古城探秘玩法"
	},
	[700]=
	{
		['jumpObject']="4",
		['openLevel']=1,
		['name']="军营",
		['openMission']=0,
		['cmdName']="",
		['ident']=700,
		['jumpType']=1,
		['jumpName']="军营",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[701]=
	{
		['jumpObject']="4,2",
		['openLevel']=1,
		['name']="征兵",
		['openMission']=10205,
		['cmdName']="open_draft",
		['ident']=701,
		['jumpType']=1,
		['jumpName']="征兵",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="征兵功能"
	},
	[702]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="义兵",
		['openMission']=0,
		['cmdName']="",
		['ident']=702,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[211]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="购买军令",
		['openMission']=0,
		['cmdName']="open_militory_order",
		['ident']=211,
		['jumpType']=1,
		['jumpName']="购买军令",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="可用金币购买军令，不过数量有限哦"
	},
	[212]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="获取资源",
		['openMission']=0,
		['cmdName']="open_resource",
		['ident']=212,
		['jumpType']=1,
		['jumpName']="购买资源",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="可用获取各类资源"
	},
	[221]=
	{
		['jumpObject']="13",
		['openLevel']=1,
		['name']="铁矿",
		['openMission']=0,
		['cmdName']="",
		['ident']=221,
		['jumpType']=1,
		['jumpName']="铁矿",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[3301]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="精彩福利",
		['openMission']=10205,
		['cmdName']="enter_activity",
		['ident']=3301,
		['jumpType']=1,
		['jumpName']="福利",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="福利玩法"
	},
	[3302]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="七天狂欢",
		['openMission']=10205,
		['cmdName']="open_seven_day",
		['ident']=3302,
		['jumpType']=1,
		['jumpName']="七天狂欢",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="福利-七天狂欢玩法"
	},
	[231]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="收获",
		['openMission']=10205,
		['cmdName']="enter_farm_collect",
		['ident']=231,
		['jumpType']=1,
		['jumpName']="收获",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[3304]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="成长基金",
		['openMission']=10105,
		['cmdName']="open_growth_fund",
		['ident']=3304,
		['jumpType']=1,
		['jumpName']="成长基金",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="福利-成长基金玩法"
	},
	[3305]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="探索之路",
		['openMission']=0,
		['cmdName']="open_activity_level",
		['ident']=3305,
		['jumpType']=1,
		['jumpName']="探索之路",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="福利-探索之路玩法"
	},
	[3306]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="找回资源",
		['openMission']=0,
		['cmdName']="",
		['ident']=3306,
		['jumpType']=1,
		['jumpName']="找回资源",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="福利-找回资源玩法"
	},
	[3307]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="每日签到",
		['openMission']=0,
		['cmdName']="open_sign",
		['ident']=3307,
		['jumpType']=1,
		['jumpName']="每日签到",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="福利-每日签到玩法"
	},
	[3308]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="回归奖励",
		['openMission']=0,
		['cmdName']="",
		['ident']=3308,
		['jumpType']=1,
		['jumpName']="回归奖励",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="福利-回归奖励玩法"
	},
	[3309]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="充值回馈",
		['openMission']=0,
		['cmdName']="",
		['ident']=3309,
		['jumpType']=1,
		['jumpName']="充值回馈",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="福利-充值回馈玩法"
	},
	[2801]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="竞技场",
		['openMission']=10404,
		['cmdName']="open_arena",
		['ident']=2801,
		['jumpType']=1,
		['jumpName']="竞技场",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="竞技场"
	},
	[2601]=
	{
		['jumpObject']="3",
		['openLevel']=1,
		['name']="云游商人",
		['openMission']=0,
		['cmdName']="open_shop",
		['ident']=2601,
		['jumpType']=1,
		['jumpName']="商店",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="商店"
	},
	[251]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="收获",
		['openMission']=10205,
		['cmdName']="",
		['ident']=251,
		['jumpType']=1,
		['jumpName']="农田",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[2602]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="竞技场商店",
		['openMission']=10404,
		['cmdName']="open_shop",
		['ident']=2602,
		['jumpType']=1,
		['jumpName']="竞技场商店",
		['jumpIcon']="s03_00095.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']=2,
				['findState']="",
				['tabIndex']=""
			}
		},
		['jumpDescription']="竞技场商店"
	},
	[2603]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="古城商店",
		['openMission']=10905,
		['cmdName']="open_shop",
		['ident']=2603,
		['jumpType']=1,
		['jumpName']="古城商店",
		['jumpIcon']="s03_00096.png",
		['Param']=
		{

			{
				['index']=1,
				['subIndex']=1,
				['findState']="",
				['tabIndex']=""
			}
		},
		['jumpDescription']="古城商店"
	},
	[261]=
	{
		['jumpObject']="22",
		['openLevel']=1,
		['name']="民居",
		['openMission']=0,
		['cmdName']="",
		['ident']=261,
		['jumpType']=1,
		['jumpName']="民居",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[3350]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="赛季战令",
		['openMission']=0,
		['cmdName']="open_pass_check",
		['ident']=3350,
		['jumpType']=1,
		['jumpName']="通行证",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="赛季战令玩法获得"
	},
	[802]=
	{
		['jumpObject']="1,2",
		['openLevel']=1,
		['name']="科技",
		['openMission']=10204,
		['cmdName']="open_tech",
		['ident']=802,
		['jumpType']=1,
		['jumpName']="研究",
		['jumpIcon']="s03_000506-6.png",
		['jumpDescription']="研究科技"
	},
	[300]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="军团",
		['openMission']=10205,
		['cmdName']="open_crop",
		['ident']=300,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="加入或创建军团"
	},
	[301]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="军团",
		['openMission']=10205,
		['cmdName']="open_crop_main",
		['ident']=301,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="加入或创建军团"
	},
	[302]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="军团",
		['openMission']=10205,
		['cmdName']="open_crop_my",
		['ident']=302,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="我的军团"
	},
	[303]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="军团科技",
		['openMission']=0,
		['cmdName']="open_crop_tech",
		['ident']=303,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="军团科技"
	},
	[304]=
	{
		['jumpObject']="",
		['openLevel']=200,
		['name']="军团副本",
		['openMission']=0,
		['cmdName']="open_legion_campaign",
		['ident']=304,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="军团副本"
	},
	[305]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="军团互助",
		['openMission']=0,
		['cmdName']="open_crop_help",
		['ident']=305,
		['jumpType']=1,
		['jumpName']="军团",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="军团互助"
	},
	[306]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="势力演兵",
		['openMission']=0,
		['cmdName']="open_crop_sign",
		['ident']=306,
		['jumpType']=1,
		['jumpName']="势力演兵",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="每日演兵获取军勋"
	},
	[307]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="天下大势",
		['openMission']=0,
		['cmdName']="",
		['ident']=307,
		['jumpType']=1,
		['jumpName']="天下大势",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="天下大势赛季任务目标"
	},
	[3400]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="部队出征",
		['openMission']=0,
		['cmdName']="open_world_troop",
		['ident']=3400,
		['jumpType']=1,
		['jumpName']="部队出征",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="可由部队出征玩法获得"
	},
	[3401]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="部队编组",
		['openMission']=0,
		['cmdName']="open_world_troop_edit",
		['ident']=3401,
		['jumpType']=1,
		['jumpName']="部队编组",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="可由部队编组玩法获得"
	},
	[2900]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="征战",
		['openMission']=0,
		['cmdName']="open_daily",
		['ident']=2900,
		['jumpType']=1,
		['jumpName']="日常副本",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="日常副本"
	},
	[2901]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="资源副本",
		['openMission']=10502,
		['cmdName']="enter_instance_daily",
		['ident']=2901,
		['jumpType']=1,
		['jumpName']="瑶台银阙",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="资源副本"
	},
	[2902]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="资源副本",
		['openMission']=10502,
		['cmdName']="enter_instance_daily",
		['ident']=2902,
		['jumpType']=1,
		['jumpName']="沙场问道",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="资源副本"
	},
	[2903]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="敬请期待",
		['openMission']=0,
		['cmdName']="open_daily",
		['ident']=2903,
		['jumpType']=1,
		['jumpName']="日常副本",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="暂未开放敬请期待"
	},
	[3303]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="战力考核",
		['openMission']=10402,
		['cmdName']="",
		['ident']=3303,
		['jumpType']=1,
		['jumpName']="战力考核",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="福利-战力考核玩法"
	},
	[1401]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="收获",
		['openMission']=10205,
		['cmdName']="enter_farm_collect",
		['ident']=1401,
		['jumpType']=1,
		['jumpName']="收获",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']="农田功能"
	},
	[901]=
	{
		['jumpObject']="",
		['openLevel']=5,
		['name']="兵器坊",
		['openMission']=0,
		['cmdName']="open_equip_pool",
		['ident']=901,
		['jumpType']=1,
		['jumpName']="兵器坊",
		['jumpIcon']="s03_000506-6.png",
		['jumpDescription']="兵器坊"
	},
	[241]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="官职",
		['openMission']=10305,
		['cmdName']="open_official",
		['ident']=241,
		['jumpType']=1,
		['jumpName']="官职",
		['jumpIcon']="s03_00096.png",
		['jumpDescription']=""
	},
	[2501]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="府邸",
		['openMission']=0,
		['cmdName']="open_bosom",
		['ident']=2501,
		['jumpType']=1,
		['jumpName']="",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']=""
	},
	[1501]=
	{
		['jumpObject']="",
		['openLevel']=1,
		['name']="试炼塔",
		['openMission']=10302,
		['cmdName']="open_trials_tower",
		['ident']=1501,
		['jumpType']=1,
		['jumpName']="试炼塔",
		['jumpIcon']="s03_00095.png",
		['jumpDescription']="试炼塔"
	}
}}
return Modules