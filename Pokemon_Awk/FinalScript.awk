BEGIN{

	  FS=","

	  max = $5

	  TotalAvg=0

	  HpAvg=0

	  DefenseAvg=0

	  AttackAvg=0

	  SpAtk=0

	  SpDef=0

	  SpeedAvg=0

	  GrassStrongest=""

	  GrassCount=0

	  GrassTotal=0

	  GrassHp=0

	  GrassAttack=0

	  GrassDefense=0

	  GrassSpAtk=0

	  GrassSpDef=0

	  GrassSpeed=0

	  GrassMax = 0

	  FireStrongest=""

	  FireCount=0

	  FireTotal=0

	  FireHp=0

	  FireAttack=0

	  FireDefense=0

	  FireSpAtk=0

	  FireSpDef=0

	  FireSpeed=0

	  FireMax=0

	  WaterStrongest=""

	  WaterCount=0

	  WaterTotal=0

	  WaterHp=0

	  WaterAttack=0

	  WaterDefense=0

	  WaterSpAtk=0

	  WaterSpDef=0

	  WaterSpeed=0

	  WaterMax=0

	  BugStrongest=""

	  BugCount=0

	  BugTotal=0

	  BugHp=0

	  BugAttack=0

	  BugDefense=0

	  BugSpAtk=0

	  BugSpDef=0

	  BugSpeed=0 

	  BugMax=0

	  NormalStrongest=""

	  NormalCount=0

	  NormalTotal=0

	  NormalHp=0

	  NormalAttack=0

	  NormalDefense=0

	  NormalSpAtk=0

	  NormalSpDef=0

	  NormalSpeed=0

	  NormalMax = 0

	  PoisonStrongest=""

	  PoisonCount=0

	  PoisonTotal=0

	  PoisonHp=0

	  PoisonAttack=0

	  PoisonDefense=0

	  PoisonSpAtk=0

	  PoisonSpDef=0

	  PoisonSpeed=0

	  PoisonMax=0

	  ElectricStrongest=""

	  ElectricCount=0

	  ElectricTotal=0

	  ElectricHp=0

	  ElectricAttack=0

	  ElectricDefense=0

	  ElectricSpAtk=0

	  ElectricSpDef=0

	  ElectricSpeed=0

	  ElectricMax=0

	  GroundStrongest=""

	  GroundCount=0

	  GroundTotal=0

	  GroundHp=0

	  GroundAttack=0

	  GroundDefense=0

	  GroundSpAtk=0

	  GroundSpDef=0

	  GroundSpeed=0

	  GroundMax=0

	  FairyStrongest=""

	  FairyCount=0

	  FairyTotal=0

	  FairyHp=0

	  FairyAttack=0

	  FairyDefense=0

	  FairySpAtk=0

	  FairySpDef=0

	  FairySpeed=0

	  FairyMax=0

	  FightingStrongest=""

	  FightingCount=0

	  FightingTotal=0

	  FightingHp=0

	  FightingAttack=0

	  FightingDefense=0

	  FightingSpAtk=0

	  FightingSpDef=0

	  FightingSpeed=0

	  FightingMax=0

	  PsychicStrongest=""

	  PsychicCount=0

	  PsychicTotal=0

	  PsychicHp=0

	  PsychicAttack=0

	  PsychicDefense=0

	  PsychicSpAtk=0

	  PyschicSpDef=0

	  PsychicSpeed=0

	  PsychicMax=0

	  RockStrongest=""

	  RockCount=0

	  RockTotal=0

	  RockHp=0

	  RockAttack=0

	  RockDefense=0

	  RockSpAtk=0

	  RockSpDef=0

	  RockSpeed=0

	  RockMax=0

	  GhostStrongest=""

	  GhostCount=0

	  GhostTotal=0

	  GhostHp=0

	  GhostAttack=0

	  GhostDefense=0

	  GhostSpAtk=0

	  GhostSpDef=0

	  GhostSpeed=0

	  GhostMax=0

	  IceStrongest=""

	  IceCount=0

	  IceTotal=0

	  IceHp=0

	  IceAttack=0

	  IceDefense=0

	  IceSpAtk=0

	  IceSpDef=0

	  IceSpeed=0

	  IceMax=0

	  DragonStrongest=""

	  DragonCount=0

	  DragonTotal=0

	  DragonHp=0

	  DragonAttack=0

	  DragonDefense=0

	  DragonSpAtk=0

	  DragonSpDef=0

	  DragonSpeed=0

	  DragonMax=0

	  DarkStrongest=""

	  DarkCount=0

	  DarkTotal=0

	  DarkHp=0

	  DarkAttack=0

	  DarkDefense=0

	  DarkSpAtk=0

	  DarkSpDef=0

	  DarkSpeed=0

	  DarkMax=0

	  SteelStrongest=""

	  SteelCount=0

	  SteelTotal=0

	  SteelHp=0

	  SteelAttack=0

	  SteelDefense=0

	  SteelSpAtk=0

	  SteelSpDef=0

	  SteelSpeed=0

	  SteelMax=0

	  FlyingStrongest=""

	  FlyingCount=0

	  FlyingTotal=0

	  FlyingHp=0

	  FlyingAttack=0

	  FlyingDefense=0

	  FlyingSpAtk=0

	  FlyingSpDef=0

	  FlyingSpeed=0

	  FlyingMax=0

	  LegendaryCount=0

  }



  /^[^#]/{



	  if (max < $5) {

		  name = $2;

		  max  = $5;

	  }

	  else if ($5 == max){

		  name = name "\n" $2;

	  }

  }
$13~ "True"{

	Legendaries[LegendaryCount] = $2;

	LegendaryCount = LegendaryCount +1;

}
  /^[^#]/{

				
			TotalAvg = TotalAvg + $5;

			HpAvg = HpAvg + $6;

			AttackAvg = AttackAvg + $7;

			DefenseAvg = DefenseAvg + $8;

			SpAtk = SpAtk + $9;

			SpDef = SpDef + $10;

			SpeedAvg = SpeedAvg + $11;

		}



		$3 ~ "Grass"{

			if ($5 > GrassMax) {

				GrassStrongest = $2;

				GrassMax = $5;

			}

			GrassCount = GrassCount +1;

			GrassTotal = GrassTotal +$5;

			GrassHp = GrassHp +$6;

			GrassAttack = GrassAttack +$7;

			GrassDefense = GrassDefense +$8;

			GrassSpAtk = GrassSpAtk +$9;

			GrassSpDef = GrassSpDef +$10;

			GrassSpeed = GrassSpeed +$11;



		}

		$3 ~ "Fire"{

			if ($5 > FireMax) {

				FireStrongest = $2;

				FireMax = $5;

			}

			FireCount = FireCount +1;

			FireTotal = FireTotal +$5;

			FireHp = FireHp +$6;

			FireAttack = FireAttack +$7;

			FireDefense = FireDefense +$8;

			FireSpAtk = FireSpAtk +$9;

			FireSpDef = FireSpDef +$10;

			FireSpeed = FireSpeed +$11;

		}



		$3 ~ "Water"{

			if ($5 > WaterMax) {

				WaterStrongest = $2;

				WaterMax = $5;

			}

			WaterCount = WaterCount +1;

			WaterTotal = WaterTotal +$5;

			WaterHp = WaterHp +$6;

			WaterAttack = WaterAttack +$7;

			WaterDefense = WaterDefense +$8;

			WaterSpAtk = WaterSpAtk +$9;

			WaterSpDef = WaterSpDef +$10;

			WaterSpeed = WaterSpeed +$11;

		}

		$3 ~ "Bug"{

			if ($5 > BugMax) {

				BugStrongest = $2;

				BugMax = $5;

			}

			BugCount = BugCount +1;

			BugTotal = BugTotal +$5;

			BugHp = BugHp +$6;

			BugAttack = BugAttack +$7;

			BugDefense = BugDefense +$8;

			BugSpAtk = BugSpAtk +$9;

			BugSpDef = BugSpDef +$10;

			BugSpeed = BugSpeed +$11;

		}

		$3 ~ "Normal"{

			if ($5 > NormalMax) {

				NormalStrongest = $2;

				NormalMax = $5;

			}

			NormalCount = NormalCount +1;

			NormalTotal = NormalTotal +$5;

			NormalHp = NormalHp +$6;

			NormalAttack = NormalAttack +$7;

			NormalDefense = NormalDefense +$8;

			NormalSpAtk = NormalSpAtk +$9;

			NormalSpDef = NormalSpDef +$10;

			NormalSpeed = NormalSpeed +$11;

		}

		$3 ~ "Poison"{

			if ($5 > PoisonMax) {

				PoisonStrongest = $2;

				PoisonMax = $5;

			}

			PoisonCount = PoisonCount +1;

			PoisonTotal = PoisonTotal +$5;

			PoisonHp = PoisonHp +$6;

			PoisonAttack = PoisonAttack +$7;

			PoisonDefense = PoisonDefense +$8;

			PoisonSpAtk = PoisonSpAtk +$9;

			PoisonSpDef = PoisonSpDef +$10;

			PoisonSpeed = PoisonSpeed +$11;

		}

		$3 ~ "Electric"{

			if ($5 > ElectricMax) {

				ElectricStrongest = $2;

				ElectricMax = $5;

			}

			ElectricCount = ElectricCount +1;

			ElectricTotal = ElectricTotal +$5;

			ElectricHp = ElectricHp +$6;

			ElectricAttack = ElectricAttack +$7;

			ElectricDefense = ElectricDefense +$8;

			ElectricSpAtk = ElectricSpAtk +$9;

			ElectricSpDef = ElectricSpDef +$10;

			ElectricSpeed = ElectricSpeed +$11;

		}

		$3 ~ "Ground"{

			if ($5 > GroundMax) {

				GroundStrongest = $2;

				GroundMax = $5;

			}

			GroundCount = GroundCount +1;

			GroundTotal = GroundTotal +$5;

			GroundHp = GroundHp +$6;

			GroundAttack = GroundAttack +$7;

			GroundDefense = GroundDefense +$8;

			GroundSpAtk = GroundSpAtk +$9;

			GroundSpDef = GroundSpDef +$10;

			GroundSpeed = GroundSpeed +$11;

		}

		$3 ~ "Fairy"{

			if ($5 > FairyMax) {

				FairyStrongest = $2;

				FairyMax = $5;

			}

			FairyCount = FairyCount +1;

			FairyTotal = FairyTotal +$5;

			FairyHp = FairyHp +$6;

			FairyAttack = FairyAttack +$7;

			FairyDefense = FairyDefense +$8;

			FairySpAtk = FairySpAtk +$9;

			FairySpDef = FairySpDef +$10;

			FairySpeed = FairySpeed +$11;

		}

		$3 ~ "Fighting"{

			if ($5 > FightingMax) {

				FightingStrongest = $2;

				FightingMax = $5;

			}

			FightingCount = FightingCount +1;

			FightingTotal = FightingTotal +$5;

			FightingHp = FightingHp +$6;

			FightingAttack = FightingAttack +$7;

			FightingDefense = FightingDefense +$8;

			FightingSpAtk = FightingSpAtk +$9;

			FightingSpDef = FightingSpDef +$10;

			FightingSpeed = FightingSpeed +$11;

		}

		$3 ~ "Psychic"{

			if ($5 > PsychicMax) {

				PsychicStrongest = $2;

				PsychicMax = $5;

			}

			PsychicCount = PsychicCount +1;

			PsychicTotal = PsychicTotal +$5;

			PsychicHp = PsychicHp +$6;

			PsychicAttack = PsychicAttack +$7;

			PsychicDefense = PsychicDefense +$8;

			PsychicSpAtk = PsychicSpAtk +$9;

			PsychicSpDef = PsychicSpDef +$10;

			PsychicSpeed = PsychicSpeed +$11;

		}

		$3 ~ "Rock"{

			if ($5 > RockMax) {

				RockStrongest = $2;

				RockMax = $5;

			}

			RockCount = RockCount +1;

			RockTotal = RockTotal +$5;

			RockHp = RockHp +$6;

			RockAttack = RockAttack +$7;

			RockDefense = RockDefense +$8;

			RockSpAtk = RockSpAtk +$9;

			RockSpDef = RockSpDef +$10;

			RockSpeed = RockSpeed +$11;

		}

		$3 ~ "Ghost"{

			if ($5 > GhostMax) {

				GhostStrongest = $2;

				GhostMax = $5;

			}

			GhostCount = GhostCount +1;

			GhostTotal = GhostTotal +$5;

			GhostHp = GhostHp +$6;

			GhostAttack = GhostAttack +$7;

			GhostDefense = GhostDefense +$8;

			GhostSpAtk = GhostSpAtk +$9;

			GhostSpDef = GhostSpDef +$10;

			GhostSpeed = GhostSpeed +$11;

		}

		$3 ~ "Ice"{

			if ($5 > IceMax) {

				IceStrongest = $2;

				IceMax = $5;

			}

			IceCount = IceCount +1;

			IceTotal = IceTotal +$5;

			IceHp = IceHp +$6;

			IceAttack = IceAttack +$7;

			IceDefense = IceDefense +$8;

			IceSpAtk = IceSpAtk +$9;

			IceSpDef = IceSpDef +$10;

			IceSpeed = IceSpeed +$11;

		}

		$3 ~ "Dragon"{

			if ($5 > DragonMax) {

				DragonStrongest = $2;

				DragonMax = $5;

			}

			DragonCount = DragonCount +1;

			DragonTotal = DragonTotal +$5;

			DragonHp = DragonHp +$6;

			DragonAttack = DragonAttack +$7;

			DragonDefense = DragonDefense +$8;

			DragonSpAtk = DragonSpAtk +$9;

			DragonSpDef = DragonSpDef +$10;

			DragonSpeed = DragonSpeed +$11;

		}

		$3 ~ "Dark"{

			if ($5 > DarkMax) {

				DarkStrongest = $2;

				DarkMax = $5;

			}

			DarkCount = DarkCount +1;

			DarkTotal = DarkTotal +$5;

			DarkHp = DarkHp +$6;

			DarkAttack = DarkAttack +$7;

			DarkDefense = DarkDefense +$8;

			DarkSpAtk = DarkSpAtk +$9;

			DarkSpDef = DarkSpDef +$10;

			DarkSpeed = DarkSpeed +$11;

		}

		$3 ~ "Steel"{

			if ($5 > SteelMax) {

				SteelStrongest = $2;

				SteelMax = $5;

			}

			SteelCount = SteelCount +1;

			SteelTotal = SteelTotal +$5;

			SteelHp = SteelHp +$6;

			SteelAttack = SteelAttack +$7;

			SteelDefense = SteelDefense +$8;

			SteelSpAtk = SteelSpAtk +$9;

			SteelSpDef = SteelSpDef +$10;

			SteelSpeed = SteelSpeed +$11;

		}

		$3 ~ "Flying"{

			if ($5 > FlyingMax) {

				FlyingStrongest = $2;

				FlyingMax = $5;

			}

			FlyingCount = FlyingCount +1;

			FlyingTotal = FlyingTotal +$5;

			FlyingHp = FlyingHp +$6;

			FlyingAttack = FlyingAttack +$7;

			FlyingDefense = FlyingDefense +$8;

			FlyingSpAtk = FlyingSpAtk +$9;

			FlyingSpDef = FlyingSpDef +$10;

			FlyingSpeed = FlyingSpeed +$11;

		}



		END{

			print "\n====================================================================================="

			print "The pokemon with the highest total power have the total power of " max " and they are: \n\n" name

			print "\n====================================================================================="

			print "The averages for each column are as followed: \n"

			print "Total Average: " (TotalAvg/(NR -1)) "\nHP Average: " (HpAvg/(NR -1)) "\nAttack Average: " (AttackAvg/(NR -1))

			print "Defense Average: " (DefenseAvg/(NR -1)) "\nSpecial Atk Average: " (SpAtk/(NR-1))

			print "Special Def Average: " (SpDef/(NR -1)) "\nSpeed Average: " (SpeedAvg/(NR-1))

			print "\n====================================================================================="

			print "GRASS STATS\n"

			print "The strongest type 1 Grass Pokemon is: " GrassStrongest " with the total power of " GrassMax

			print "Grass Count: " GrassCount "\nTotal Avg: " (GrassTotal/GrassCount) "\nHP Avg: " (GrassHp/GrassCount)

			print "Attack Avg: " (GrassAttack/GrassCount) "\nDefense Avg: " (GrassDefense/GrassCount) "\nSpecial Atk Avg: "(GrassSpAtk/GrassCount)

			print "Special Def Avg: " (GrassSpDef/GrassCount) "\nSpeed Avg: " (GrassSpeed/GrassCount)

			print "\n====================================================================================="

			print "FIRE STATS\n"

			print "The strongest type 1 Fire Pokemon is: " WaterStrongest " with the total power of " FireMax

			print "Fire Count: " FireCount "\nTotal Avg: " (FireTotal/FireCount) "\nHP Avg: " (FireHp/FireCount)

			print "Attack Avg: " (FireAttack/FireCount) "\nDefense Avg: " (FireDefense/FireCount) "\nSpecial Atk Avg: "(FireSpAtk/FireCount)

			print "Special Def Avg: " (FireSpDef/FireCount) "\nSpeed Avg: " (FireSpeed/FireCount)

			print "\n====================================================================================="

			print "WATER STATS\n"

			print "The strongest type 1 Water Pokemon is: " WaterStrongest " with the total power of " WaterMax

			print "Water Count: " WaterCount "\nTotal Avg: " (WaterTotal/WaterCount) "\nHP Avg: " (WaterHp/WaterCount)

			print "Attack Avg: " (WaterAttack/WaterCount) "\nDefense Avg: " (WaterDefense/WaterCount) "\nSpecial Atk Avg: "(WaterSpAtk/WaterCount)

			print "Special Def Avg: " (WaterSpDef/WaterCount) "\nSpeed Avg: " (WaterSpeed/WaterCount)

			print "\n=====================================================================================" 

			print "BUG STATS\n"

			print "The strongest type 1 Bug Pokemon is: " BugStrongest " with the total power of " BugMax

			print "Bug Count: " BugCount "\nTotal Avg: " (BugTotal/BugCount) "\nHP Avg: " (BugHp/BugCount)

			print "Attack Avg: " (BugAttack/BugCount) "\nDefense Avg: " (BugDefense/BugCount) "\nSpecial Atk Avg: "(BugSpAtk/BugCount)

			print "Special Def Avg: " (BugSpDef/BugCount) "\nSpeed Avg: " (BugSpeed/BugCount)

			print "\n====================================================================================="

			print "NORMAL STATS\n"

			print "The strongest type 1 Normal Pokemon is: " NormalStrongest " with the total power of " NormalMax

			print "Normal Count: " NormalCount "\nTotal Avg: " (NormalTotal/NormalCount) "\nHP Avg: " (NormalHp/NormalCount)

			print "Attack Avg: " (NormalAttack/NormalCount) "\nDefense Avg: " (NormalDefense/NormalCount) "\nSpecial Atk Avg: "(NormalSpAtk/NormalCount)

			print "Special Def Avg: " (NormalSpDef/NormalCount) "\nSpeed Avg: " (NormalSpeed/NormalCount)

			print "\n====================================================================================="

			print "POISON STATS\n"

			print "The strongest type 1 Poison Pokemon is: " PoisonStrongest " with the total power of " PoisonMax

			print "Poison Count: " PoisonCount "\nTotal Avg: " (PoisonTotal/PoisonCount) "\nHP Avg: " (PoisonHp/PoisonCount)

			print "Attack Avg: " (PoisonAttack/PoisonCount) "\nDefense Avg: " (PoisonDefense/PoisonCount) "\nSpecial Atk Avg: "(PoisonSpAtk/PoisonCount)

			print "Special Def Avg: " (PoisonSpDef/PoisonCount) "\nSpeed Avg: " (PoisonSpeed/PoisonCount)

			print "\n====================================================================================="

			print "ELECTRIC STATS\n"

			print "The strongest type 1 Electric Pokemon is: " ElectricStrongest " with the total power of " ElectricMax

			print "Electirc Count: " ElectricCount "\nTotal Avg: " (ElectricTotal/ElectricCount) "\nHP Avg: " (ElectircHp/ElectricCount)

			print "Attack Avg: " (ElectricAttack/ElectricCount) "\nDefense Avg: " (ElectricDefense/ElectricCount) "\nSpecial Atk Avg: "(ElectricSpAtk/ElectricCount)

			print "Special Def Avg: " (ElectricSpDef/ElectricCount) "\nSpeed Avg: " (ElectricSpeed/ElectricCount)

			print "\n====================================================================================="

			print "GROUND STATS\n"

			print "The strongest type 1 Ground Pokemon is: " GroundStrongest " with the total power of " GroundMax

			print "Ground Count: " GroundCount "\nTotal Avg: " (GroundTotal/GroundCount) "\nHP Avg: " (GroundHp/GroundCount)

			print "Attack Avg: " (GroundAttack/GroundCount) "\nDefense Avg: " (GroundDefense/GroundCount) "\nSpecial Atk Avg: "(GroundSpAtk/GroundCount)

			print "Special Def Avg: " (GroundSpDef/GroundCount) "\nSpeed Avg: " (GroundSpeed/GroundCount)

			print "\n====================================================================================="

			print "FAIRY STATS\n"

			print "The strongest type 1 Fairy Pokemon is: " FairyStrongest " with the total power of " FairyMax

			print "Fairy Count: " FairyCount "\nTotal Avg: " (FairyTotal/FairyCount) "\nHP Avg: " (FairyHp/FairyCount)

			print "Attack Avg: " (FairyAttack/FairyCount) "\nDefense Avg: " (FairyDefense/FairyCount) "\nSpecial Atk Avg: "(FairySpAtk/FairyCount)

			print "Special Def Avg: " (FairySpDef/FairyCount) "\nSpeed Avg: " (FairySpeed/FairyCount)

			print "\n====================================================================================="

			print "FIGHTING STATS\n"

			print "The strongest type 1 Fighting Pokemon is: " FightingStrongest " with the total power of " FightingMax

			print "Fighting Count: " FightingCount "\nTotal Avg: " (FightingTotal/FightingCount) "\nHP Avg: " (FightingHp/FightingCount)

			print "Attack Avg: " (FightingAttack/FightingCount) "\nDefense Avg: " (FightingDefense/FightingCount) "\nSpecial Atk Avg: "(FightingSpAtk/FightingCount)

			print "Special Def Avg: " (FightingSpDef/FightingCount) "\nSpeed Avg: " (FightingSpeed/FightingCount)

			print "\n====================================================================================="

			print "PSYCHIC STATS\n"

			print "The strongest type 1 Psychic Pokemon is: " PsychicStrongest " with the total power of " PsychicMax

			print "Psychic Count: " PsychicCount "\nTotal Avg: " (PsychicTotal/PsychicCount) "\nHP Avg: " (PsychicHp/PsychicCount)

			print "Attack Avg: " (PsychicAttack/PsychicCount) "\nDefense Avg: " (PsychicDefense/PsychicCount) "\nSpecial Atk Avg: "(PsychicSpAtk/PsychicCount)

			print "Special Def Avg: " (PyschicSpDef/PsychicCount) "\nSpeed Avg: " (PsychicSpeed/PsychicCount)

			print "\n====================================================================================="

			print "ROCK STATS\n"

			print "The strongest type 1 Rock Pokemon is: " RockStrongest " with the total power of " RockMax

			print "Rock Count: " RockCount "\nTotal Avg: " (RockTotal/RockCount) "\nHP Avg: " (RockHp/RockCount)

			print "Attack Avg: " (RockAttack/RockCount) "\nDefense Avg: " (RockDefense/RockCount) "\nSpecial Atk Avg: "(RockSpAtk/RockCount)

			print "Special Def Avg: " (RockSpDef/RockCount) "\nSpeed Avg: " (RockSpeed/RockCount)

			print "\n====================================================================================="

			print "GHOST STATS\n"

			print "The strongest type 1 Ghost Pokemon is: " GhostStrongest " with the total power of " GhostMax

			print "Ghost Count: " GhostCount "\nTotal Avg: " (GhostTotal/GhostCount) "\nHP Avg: " (GhostHp/GhostCount)

			print "Attack Avg: " (GhostAttack/GhostCount) "\nDefense Avg: " (GhostDefense/GhostCount) "\nSpecial Atk Avg: "(GhostSpAtk/GhostCount)

			print "Special Def Avg: " (GhostSpDef/GhostCount) "\nSpeed Avg: " (GhostSpeed/GhostCount)

			print "\n====================================================================================="

			print "ICE STATS\n"

			print "The strongest type 1 Ice Pokemon is: " IceStrongest " with the total power of " IceMax

			print "Ice Count: " IceCount "\nTotal Avg: " (IceTotal/IceCount) "\nHP Avg: " (IceHp/IceCount)

			print "Attack Avg: " (IceAttack/IceCount) "\nDefense Avg: " (IceDefense/IceCount) "\nSpecial Atk Avg: "(IceSpAtk/IceCount)

			print "Special Def Avg: " (IceSpDef/IceCount) "\nSpeed Avg: " (IceSpeed/IceCount)

			print "\n====================================================================================="

			print "DRAGON STATS\n"

			print "The strongest type 1 Dragon Pokemon is: " DragonStrongest " with the total power of " DragonMax

			print "Dragon Count: " DragonCount "\nTotal Avg: " (DragonTotal/DragonCount) "\nHP Avg: " (DragonHp/DragonCount)

			print "Attack Avg: " (DragonAttack/DragonCount) "\nDefense Avg: " (DragonDefense/DragonCount) "\nSpecial Atk Avg: "(DragonSpAtk/DragonCount)

			print "Special Def Avg: " (DragonSpDef/DragonCount) "\nSpeed Avg: " (DragonSpeed/DragonCount)

			print "\n====================================================================================="

			print "DARK STATS\n"

			print "The strongest type 1 Dark Pokemon is: " DarkStrongest " with the total power of " DarkMax

			print "Dark Count: " DarkCount "\nTotal Avg: " (DarkTotal/DarkCount) "\nHP Avg: " (DarkHp/DarkCount)

			print "Attack Avg: " (DarkAttack/DarkCount) "\nDefense Avg: " (DarkDefense/DarkCount) "\nSpecial Atk Avg: "(DarkSpAtk/DarkCount)

			print "Special Def Avg: " (DarkSpDef/DarkCount) "\nSpeed Avg: " (DarkSpeed/DarkCount)

			print "\n====================================================================================="

			print "STEEL STATS\n"

			print "The strongest type 1 Steel Pokemon is: " SteelStrongest " with the total power of " SteelMax

			print "Steel Count: " SteelCount "\nTotal Avg: " (SteelTotal/SteelCount) "\nHP Avg: " (SteelHp/SteelCount)

			print "Attack Avg: " (SteelAttack/SteelCount) "\nDefense Avg: " (SteelDefense/SteelCount) "\nSpecial Atk Avg: "(SteelSpAtk/SteelCount)

			print "Special Def Avg: " (SteelSpDef/SteelCount) "\nSpeed Avg: " (SteelSpeed/SteelCount)

			print "\n====================================================================================="

			print "FLYING STATS\n"

			print "The strongest type 1 Flying Pokemon is: " FlyingStrongest " with the total power of " FlyingMax

			print "Flying Count: " FlyingCount "\nTotal Avg: " (FlyingTotal/FlyingCount) "\nHP Avg: " (FlyingHp/FlyingCount)

			print "Attack Avg: " (FlyingAttack/FlyingCount) "\nDefense Avg: " (FlyingDefense/FlyingCount) "\nSpecial Atk Avg: "(FlyingSpAtk/FlyingCount)

			print "Special Def Avg: " (FlyingSpDef/FlyingCount) "\nSpeed Avg: " (FlyingSpeed/FlyingCount)

			print "\n====================================================================================="

			print "LEGENDS"

			print "Legendary Count: " LegendaryCount

			for (i =0; i<LegendaryCount; i++){

					print Legendaries[i];

				}


		}
				
