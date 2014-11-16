//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_ObjSatchel extends ROObjSatchel
    placeable;

//=============================================================================
// Functions
//=============================================================================

//-----------------------------------------------------------------------------
// HandleCompletion - Overridden
//-----------------------------------------------------------------------------

function HandleCompletion(PlayerReplicationInfo CompletePRI, int Team)
{
    bActive = false;

    if (CompletePRI != none)
    {
        Level.Game.ScoreObjective(CompletePRI, 10);
    }

    BroadcastLocalizedMessage(class'DHObjectiveMsg', Team + 2, none, none, self);
}

defaultproperties
{
}
