/// @description Initialize and populate master items array

/*
The master items array holds all default values for all items.
It's used for quick access of values. For example, if you need the
weight of a coin you'd just access ItemsMaster[item.coin][itemstats.weight]
*/

ItemsMaster = [];

for (var i = item.nomore - 1; i >= item.nothing; --i;){
	
	// Stats for all the items, in alphabetical order
	switch(i){
		
		case item.coin:
			ItemsMaster[i][itemstats.name]   = "coin";
			ItemsMaster[i][itemstats.weight] = .1;
			ItemsMaster[i][itemstats.worth]  = 1;
			break;
			
		case item.homemade_knife:
			ItemsMaster[i][itemstats.name]   = "homemade knife";
			ItemsMaster[i][itemstats.weight] = 2;
			ItemsMaster[i][itemstats.worth]  = 1;
			break;
			
		case item.nothing:
			ItemsMaster[i][itemstats.name]   = "nothing";
			ItemsMaster[i][itemstats.weight] = 0;
			ItemsMaster[i][itemstats.worth]  = 0;
			break;
	}
}