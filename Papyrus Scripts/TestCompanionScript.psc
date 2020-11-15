Scriptname test:TestCompanionScript extends Quest Conditional

Int Property Status Auto Conditional
{0 = home, 1 = following, 2 = waiting}
ReferenceAlias Property Alias_TComp Auto Const
Faction Property CurrentCompanionFaction auto Const

Function HireCompanion()

	Actor Companion  = Alias_TComp.GetActorRef()

	Status = 1
	Companion.SetPlayerTeammate(True)
	Companion.AddToFaction(CurrentCompanionFaction)	
	Companion.EvaluatePackage()

EndFunction

Function FireCompanion()

	Actor Companion  = Alias_TComp.GetActorRef()

	Status = 0
	Companion.SetPlayerTeammate(False)
	Companion.RemoveFromFaction(CurrentCompanionFaction)
	Companion.EvaluatePackage()	

EndFunction
