//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_ModifyRoundTimeMessage extends ROCriticalMessage
    abstract;

var localized string    IncreasedText;
var localized string    DecreasedText;
var localized string    ChangedText;
var localized string    RoundTimeModifiedText;
var sound               sound; //The sound to play when this actor is triggered.

static function string GetString(optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
    switch (Switch)
    {
        case 0:
            return default.RoundTimeModifiedText @ default.IncreasedText $ ".";
        case 1:
            return default.RoundTimeModifiedText @ default.DecreasedText $ ".";
        case 2:
            return default.RoundTimeModifiedText @ default.ChangedText $ ".";
        default:
            return default.RoundTimeModifiedText @ default.ChangedText $ ".";
    }
}

static simulated function ClientReceive(PlayerController P, optional int Switch,
    optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{
    super.ClientReceive(P, Switch, RelatedPRI_1, RelatedPRI_2, OptionalObject);

    P.PlayAnnouncement(default.sound, 1, true);
}

defaultproperties
{
    sound=sound'Miscsounds.Music.notify_drum'
    IncreasedText="increased"
    DecreasedText="decreased"
    ChangedText="changed"
    RoundTimeModifiedText="Time remaining has been"
}