local Rules={
['Rule']=
{
	[1]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="征收说明",
				['description']="1.在主城中提升“民居”等级，来增加征收所获得的银两。\n2.征收时有几率获得元宝特殊奖励。\n3.征收时会触发“征收事件”，不同的选择会获得对应不同的奖励。"
			}
		},
		['ident']=1,
		['title']="征收"
	},
	[203]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="竞技场战斗规则",
				['description']="1.玩家每天可以挑战5次对手，每次挑战无论胜败都会获得一定的竞技积分。\n2.每天8点到24点之间，根据玩家的排名给予累积竞技积分，在21:30时一次性发放给玩家。同时根据玩家21:30点时的排名给予额外奖励。\n3.竞技场积分可以兑换各种道具，兑换的道具会随着主城等级提升而开放更多种类。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="最高排名奖励",
				['description']="1.当玩家达到规定排名时，可领取排名奖励。\n2.排名奖励在奖励按钮内领取。\n3.每份奖励仅可领取一次。"
			}
		},
		['ident']=203,
		['title']="竞技规则"
	},
	[901]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="天下争战",
				['description']="1.试炼塔每天可以重置一次，如果不重置则会一直停留在当前进度。\n2.重置后进度会清空，可以自动扫荡值最高纪录的关卡。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="天下国政",
				['description']="1.试炼塔每天可以重置一次，如果不重置则会一直停留在当前进度。\n2.重置后进度会清空，可以自动扫荡值最高纪录的关卡。"
			}
		},
		['ident']=901,
		['title']="天下"
	},
	[801]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="发布政令",
				['description']="1.主公可以消耗官印发布政令，获取资源。官印每小时回复一个，上限为24个。\n2.发布政令时有一定概率出现暴击，获取多倍资源。"
			}
		},
		['ident']=801,
		['title']="政令"
	},
	[201]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="寻访说明",
				['description']="1.寻访可遇到名媛，与名媛交谈可提高亲密度，\n2.亲密度达到15级可成为知己，并接受名品赠送。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="内堂说明",
				['description']="1.亲密度达到40级后，继续谈话或赠送名品几率触发提亲事件。\n2.提亲成功后知己会变成妻子，并且开放内堂。"
			}
		},
		['ident']=201,
		['title']="未用"
	},
	[202]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="说明",
				['description']="1.一键高级寻访将会持续高级寻访所选名媛或NPC，并进行谈话。\n2.所需金币与高级寻访和谈话相同。"
			}
		},
		['ident']=202,
		['title']="未用"
	},
	[11]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="委任规则",
				['description']="1、随着建筑等级解锁，建筑将开启委任位置，建筑等级越高、开启数量越多。\n2、可通过选择武将上任对应位置，得到该建筑的对应委任效果。\n3、在委任面板中选择武将，只有疲劳值≤40的武将，才可以进行上任操作。\n4、在当前建筑委任界面中，仅能看到当前建筑中的武将和未上任的武将，无法看到其他建筑的委任武将。\n5、一旦委任武将后，进行升级/征兵/登庸操作，则武将头像上会显示对应的委任所需倒计时，只有在倒计时结束，武将才可被卸任。\n6、若在委任前，委任位置上有武将生病了（疲劳值≥161），且下一次升级/征兵/登庸操作不会计算生病武将收益，也不会锁定该武将。\n7、武将的疲劳值在上任后即开始增加，疲劳值≥161，且不在委任进行中，将会被强制卸任。\n8、卸任后，将出现武将可上任的倒计时，点击倒计时按钮，可购买疲劳道具，清除疲劳时间，从而使武将能更快地重新上任。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="委任效果",
				['description']="委任主殿：擅长建设类工作，能够减少所有建筑升级消耗、减少所有建筑升级时间。\n委任农田：擅长农业类工作，能够增加每小时收获的粮食。\n委任民居：擅长商业类工作，能够增加每小时征收的银两。\n委任策略府：擅长技术类工作，减少研究消耗、每10分钟获得科技点。\n委任锻造府：擅长工艺类工作，减少强化消耗、每10分钟获得龙玉。\n委任军营：擅长军事类工作，减少征兵消耗、缩短征兵所需的时间。\n委任酒馆：关系仁德，能够增加武将登庸的成功概率。"
			},
			[3]=
			{
				['showReward']="",
				['ident']=3,
				['subTitle']="内政属性",
				['description']="针对内政，武将会拥有七个新属性：政治、农业、商业、工艺、军事、技术、仁德。\n不同的内政特长，可使不同的建筑有更多的收益。"
			},
			[4]=
			{
				['showReward']="",
				['ident']=4,
				['subTitle']="熟练等级",
				['description']="随着武将的上任所在建筑时间越长，所在建筑对应的属性熟练等级将会随之提升，并且对应的属性也会应等级提升而获得更多的增长。\n但是需要注意的是，一旦武将处于生病状态，将无法获得熟练度，所以需要合理地分配武将哦！"
			}
		},
		['ident']=11,
		['title']="委任"
	},
	[301]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="挑战规则",
				['description']="1.当玩家达到指定等级后，即可解锁古城关卡。\n2.古城关卡总共会遇到6个怪物，可通过绕路或攻打怪物。\n3.击败单个关卡后，点击宝箱，可将宝箱内的道具累计入累积奖励。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="随机事件",
				['description']="1.在探秘过程中会遇到各种随机事件：挑战者、古城商人、龙玉商人。\n2.商人存在时间为30分钟，若再次遇到则会刷新货架商品和购买状态。\n3.击败挑战者可获得奖励，若失败也会被随机掠夺道具。\n4.击败6个关卡后，有概率触发密室，探查密室并击败怪物可获得更多奖励。"
			},
			[3]=
			{
				['showReward']="",
				['ident']=3,
				['subTitle']="奖励规则",
				['description']="1.在挑战的过程中，所获得的宝箱奖励会被累计入累积奖励中。\n2.只有通关完毕才可获得累积奖励，若中途失败需使用找回才可保住累积奖励。\n3.通关完所有关卡后，可通过点击多倍按钮，刷新所累计的奖励的奖励倍数，从而获得更高的收益。"
			}
		},
		['ident']=301,
		['title']="古城说明"
	},
	[302]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="发现密室",
				['description']="发现前方有个密室，但密室开关被盗贼破坏，是否进入密室探查？"
			}
		},
		['ident']=302,
		['title']="密室说明"
	},
	[401]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="武将招募",
				['description']="1.征战中打败的敌方武将会有一部分成为您的在野武将。\n2.酒馆历来是高手云集的地方，可以通过会谈招募到各种武将。前提是你必须打败过他，向他证明你的实力。\n3.通天塔商店招募的武将也会出现在这里。"
			}
		},
		['ident']=401,
		['title']="武将列表"
	},
	[21]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="分解说明",
				['description']="1.通过道具分解可将部分道具或装备分解成资源。\n2.长按道具可了解道具详情。\n3.分解装备可通过快速选择来进行分解，分解操作最多选中99个，若需要使用快速分解，请先进行快速分解设置。\n4.所有分解操作是不可逆的，请谨慎操作。"
			}
		},
		['ident']=21,
		['title']="分解"
	},
	[311]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="战令说明",
				['description']="1.赛季战令是一个跟随国战一同开启的功能，可通过在游戏内获得的战令经验，提升战令等级，即可领取战令奖励。\n2.特殊考核奖励需要通过解锁才可领取，可通过98元和298元激活战令即可领取，298元战令可直接获得4500点战令经验（可直接从0级升到20级）。\n3.战令功能将在国战结束时一同关闭，所获得的战令等级、战令经验和荣耀奖章也将一同被清空，请一定注意剩余时间！"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="签到说明",
				['description']="1.玩家可通过战令功能内的每日签到界面，获得各类奖励。\n2.达到14天时，可直接获得战令，通过仓库使用后可直接激活战令。"
			},
			[3]=
			{
				['showReward']="",
				['ident']=3,
				['subTitle']="每日特惠说明",
				['description']="1.每日特惠礼包是给激活战令的玩家的特殊福利，每日仅可购买一次，折扣多多。"
			},
			[4]=
			{
				['showReward']="",
				['ident']=4,
				['subTitle']="限时礼包说明",
				['description']="1.通过购买限时礼包，可获得各类稀有道具和荣耀奖章，荣耀奖章可在界面中的兑换商店兑换各类赛季限定道具。\n2.随着战令等级提升，可购买的次数也将提升。\n3.战令活动结束后，没有兑换完毕的荣耀奖章将过期，系统将根据您未兑换完成的荣耀奖章数量，转换成对应的游戏资源，推送到的您游戏内的邮箱。"
			}
		},
		['ident']=311,
		['title']="通行证说明"
	},
	[601]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="规则说明",
				['description']="1击败试炼塔守卫可以获得奖励，努力通关更高层数，获取更多奖励！ "
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="重置说明",
				['description']="1.试炼塔每天可以重置一次，如果不重置则会一直停留在当前进度。\n2.重置后进度会清空，可以自动扫荡值最高纪录的关卡。"
			},
			[3]=
			{
				['showReward']="",
				['ident']=3,
				['subTitle']="鼓舞说明",
				['description']="1.鼓舞可以增加队伍的总体攻防，鼓舞只对当前层的怪物有效，进入下一层鼓舞效果清空。"
			}
		},
		['ident']=601,
		['title']="试炼塔"
	},
	[411]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="武将属性",
				['description']="统率：影响武将攻击和物理防御。\n武力：影响武将战法攻击和战法防御。\n智力：影响武将计策攻击和计策防御。\n攻城：影响武将在国战中的单次拆除城防耐久值。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="武将升级",
				['description']="武将升级可提升武将的最大兵力上限。"
			},
			[3]=
			{
				['showReward']="",
				['ident']=3,
				['subTitle']="武将装备",
				['description']="穿戴武将装备，提升武将属性：物理攻击/防御、战法攻击/防御、计策攻击/防御和最大兵力上限，且可对每件装备进行强化操作，品质越高的装备还可铸造和洗练。"
			},
			[4]=
			{
				['showReward']="",
				['ident']=4,
				['subTitle']="武将顿悟",
				['description']="通过武将顿悟可提升武将星级，从而提升武将的初始统率、武力、智力，和大幅度提升培养所带来的加成，同时达到一定的星级后还可解锁新的技能。"
			},
			[5]=
			{
				['showReward']="",
				['ident']=5,
				['subTitle']="武将兵种",
				['description']="通过切换兵种可调整出战兵种，对兵种进阶可提升兵种等级和属性，重修兵种可选择更合适的出战兵种以应对各种策略关卡。"
			},
			[6]=
			{
				['showReward']="",
				['ident']=6,
				['subTitle']="武将品阶",
				['description']="收集指定材料可提升武将品阶，从而提升武将的物理攻击/防御、战法攻击/防御、计策攻击/防御和最大兵力上限。"
			}
		},
		['ident']=411,
		['title']="武将说明"
	},
	[701]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="",
				['ident']=1,
				['subTitle']="招募规则",
				['description']="1、酒馆用于获得非历史武将。\n2、随着酒馆等级提升，能刷新出的武将能力逐渐变强，刷新出高级武将概率提高。\n3、寻访需10分钟，携带礼物可提高成功概率，概率=原概率*（1+提升比例）。\n4、每天8点刷新，每天可花费元宝刷新两次。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="下野规则",
				['description']="1、非历史武将最多同时拥有20个，超过20个需下野多余非历史武将    2、下野时会返还80%升级消耗、80%品阶消耗。"
			}
		},
		['ident']=701,
		['title']="酒馆"
	},
	[501]=
	{
		['Text']=
		{
			[1]=
			{
				['showReward']="153;1;400291|153;1;400181|153;1;401851|153;1;400191",
				['ident']=1,
				['subTitle']="登录拿S资将",
				['description']="每天登录游戏，即可解锁新一天的任务，超多丰厚惊喜等你拿。"
			},
			[2]=
			{
				['showReward']="",
				['ident']=2,
				['subTitle']="半价抢购指南",
				['description']="第一天礼包|第二天礼包|第三天礼包|第四天礼包|第五天礼包|第六天礼包|第七天礼包"
			}
		},
		['ident']=501,
		['title']="七天乐"
	}
}}
return Rules