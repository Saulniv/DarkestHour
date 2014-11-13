//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DHMeleeFire extends ROMeleeFire
    abstract;

const SoundRadius = 32.000000;

// TODO: Work out the hit effect and sound system for this
function DoTrace(vector Start, Rotator Dir)
{
    local vector End, HitLocation, HitNormal;
    local Actor Other;
    local ROPawn HitPawn;
    local int Damage;
    local class<DamageType> ThisDamageType;
    local array<int> HitPoints;
    local array<int> DamageHitPoint;
    local float scale;
    local int i;
    local vector TempVec;
    local vector X, Y, Z;

    GetAxes(Dir, X, Y, Z);

    // HitPointTraces don't really like very short traces, so we have to do a long trace first, then see
    // if the player we hit was within range
    End = Start + 10000 * X;

    //Instigator.ClearStayingDebugLines();

    // do precision hit point trace to see if we hit a player or something else
    Other = Instigator.HitPointTrace(HitLocation, HitNormal, End, HitPoints, Start);

    // Debugging
    //log("VSize(Start-HitLocation) ="$VSize(Start-HitLocation));
    //Instigator.DrawStayingDebugLine(Start, Start+GetTraceRange()* X, 0,255,0);

    if (Other == none || VSizeSquared(Start-HitLocation) > GetTraceRangeSquared())
    {
        for(i = 0; i < 4; i++)
        {
            switch(i)
            {
                // Lower Left
                case 0:
                    TempVec = (Start - MeleeAttackSpread * Y) - MeleeAttackSpread * Z;
                    break;
                // Upper Right
                case 1:
                    TempVec = (Start + MeleeAttackSpread * Y) + MeleeAttackSpread * Z;
                    break;
                // Upper Left
                case 2:
                    TempVec = (Start - MeleeAttackSpread * Y) + MeleeAttackSpread * Z;
                    break;
                // Lower Right
                case 3:
                    TempVec = (Start + MeleeAttackSpread * Y) - MeleeAttackSpread * Z;
                    break;
            }

            End = TempVec + 10000 * X;

            Other = Instigator.HitPointTrace(HitLocation, HitNormal, End, HitPoints, TempVec);

            // Debugging
            //Instigator.DrawStayingDebugLine(TempVec, TempVec+GetTraceRange()* X, 255,255,0);

            if (Other != none)
            {
                if (VSizeSquared(Start-HitLocation) < GetTraceRangeSquared())
                {
                    break;
                }
                else
                {
                    Other = none;
                }
            }
        }
    }

    if (Other != none && (VSizeSquared(Start-HitLocation) > GetTraceRangeSquared()))
    {
        Other=none;
        return;
    }

    if (Other == none)
    {
        Other = Instigator.Trace(HitLocation, HitNormal, End, Start, true,);
        if (VSizeSquared(Start-HitLocation) > GetTraceRangeSquared())
        {
            Other=none;
            return;
        }

        if (Other != none && !Other.bWorldGeometry)
        {
            if (Other.IsA('Vehicle'))
            {
                if (Weapon.bBayonetMounted)
                {
                    Weapon.PlaySound(GroundStabSound,SLOT_none,FireVolume,, SoundRadius,, true);
                }
                else
                {
                    Weapon.PlaySound(GroundBashSound,SLOT_none,FireVolume,, SoundRadius,, true);
                }
            }

            Other=none;
            return;
        }
    }

    if (Other != none && Other != Instigator && Other.Base != Instigator)
    {

        if (Weapon.bBayonetMounted)
        {
            scale = (FClamp(HoldTime, MinHoldTime, FullHeldTime) - MinHoldTime) / (FullHeldTime - MinHoldTime); // result 0 to 1
            Damage = BayonetDamageMin + scale * (BayonetDamageMax - BayonetDamageMin);
            //log("Damage scale = "$scale$" Damage is "$Damage);
            ThisDamageType = BayonetDamageType;
        }
        else
        {
            scale = (FClamp(HoldTime, MinHoldTime, FullHeldTime) - MinHoldTime) / (FullHeldTime - MinHoldTime); // result 0 to 1
            Damage = DamageMin + scale * (DamageMax - DamageMin);
            //log("Damage scale = "$scale$" Damage is "$Damage);
            ThisDamageType = DamageType;
        }

        if (!Other.bWorldGeometry)
        {
            // Update hit effect except for pawns (blood) other than vehicles.
            if (Other.IsA('Vehicle') || (!Other.IsA('Pawn') && !Other.IsA('HitScanBlockingVolume')))
                WeaponAttachment(Weapon.ThirdPersonActor).UpdateHit(Other, HitLocation, HitNormal);


            HitPawn = ROPawn(Other);

            if (HitPawn != none)
            {
                 // Hit detection debugging
                 /*log("PreLaunchTrace hit "$HitPawn.PlayerReplicationInfo.PlayerName);
                 HitPawn.HitStart = Start;
                 HitPawn.HitEnd = End;*/

                 if (!HitPawn.bDeleteMe)
                 {
                    DamageHitPoint[0]= HitPoints[HitPawn.GetHighestDamageHitIndex(HitPoints)];
                    HitPawn.ProcessLocationalDamage(Damage, Instigator, HitLocation, MomentumTransfer*X,ThisDamageType,DamageHitPoint);
                    if (Weapon.bBayonetMounted)
                    {
                        Weapon.PlaySound(PlayerStabSound,SLOT_none,FireVolume,, SoundRadius,, true);
                    }
                    else
                    {
                        Weapon.PlaySound(PlayerBashSound,SLOT_none,1.0,, SoundRadius,, true);
                    }
                 }
                 // Hit detection debugging
                 //if (Level.NetMode == NM_Standalone)
                 //   HitPawn.DrawBoneLocation();
            }
            else
            {
                if (Weapon.bBayonetMounted)
                {
                    Weapon.PlaySound(GroundStabSound,SLOT_none, FireVolume,, SoundRadius,, true);
                }
                else
                {
                    Weapon.PlaySound(GroundBashSound,SLOT_none, FireVolume,, SoundRadius,, true);
                }

                Other.TakeDamage(Damage, Instigator, HitLocation, MomentumTransfer * X, ThisDamageType);
            }

            HitNormal = vect(0, 0, 0);
        }
        else
        {
            if (RODestroyableStaticMesh(Other) != none)
            {
                Other.TakeDamage(Damage, Instigator, HitLocation, MomentumTransfer*X, ThisDamageType);
            }

            if (WeaponAttachment(Weapon.ThirdPersonActor) != none)
            {
                WeaponAttachment(Weapon.ThirdPersonActor).UpdateHit(Other,HitLocation,HitNormal);
            }

            if (Weapon.bBayonetMounted)
            {
                Weapon.PlaySound(GroundStabSound,SLOT_none,FireVolume,, SoundRadius,, true);
            }
            else
            {
                Weapon.PlaySound(GroundBashSound,SLOT_none,FireVolume,, SoundRadius,, true);
            }
        }
    } // end of if (Other != none && (Other != Instigator || ReflectNum > 0))
    else
    {
         HitLocation = End;
         HitNormal = vect(0,0,0);
    }

    return;
}

defaultproperties
{
}

