//pasang di enum pInfo
pStaterpack, //komanya jangan ketinggalan

//pasang di cmd
CMD:claim(playerid, params[])
{
	if(PlayerInfo[playerid][pStaterpack] == 1) return SendClientMessage(playerid, COLOR_RED, "Lo Udah Ambil Staterpack Bangsat!");
	{
	PlayerInfo[playerid][pCash] += 20000000;
	GivePlayerMoney(playerid, 20000000);
	OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
	PlayerInfo[playerid][pLevel] += 8;
	OnPlayerUpdateAccountsPer(playerid, "pLevel", PlayerInfo[playerid][pLevel]);
	PlayerInfo[playerid][pStaterpack] = 8;
	OnPlayerUpdateAccountsPer(playerid, "pStaterpack", PlayerInfo[playerid][pStaterpack]);
	SendClientMessage(playerid, COLOR_YELLOW, "You are successful get a starterpack");
	SendClientMessage(playerid, COLOR_WHITE, "{3BBD44}Level: {FFFFFF}+8");
	SendClientMessage(playerid, COLOR_WHITE, "{3BBD44}Money: {FFFFFF}+Rp20,000,000");
	}
    return 1;
}

//pasang di publics: OnPlayerLoadAccounts
cache_get_value_int(0, "pStaterpack", PlayerInfo[playerid][pStaterpack]);

//pasang di mysql phpAdmin
pStaterpack //tutornya ada divideo, tonton sampe habis
