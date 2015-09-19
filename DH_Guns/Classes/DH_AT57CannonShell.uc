//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_AT57CannonShell extends DHCannonShell;

defaultproperties
{
    DHPenetrationTable(0)=11.5
    DHPenetrationTable(1)=11.0
    DHPenetrationTable(2)=10.3
    DHPenetrationTable(3)=9.6
    DHPenetrationTable(4)=9.0
    DHPenetrationTable(5)=8.4
    DHPenetrationTable(6)=7.8
    DHPenetrationTable(7)=7.3
    DHPenetrationTable(8)=6.8
    DHPenetrationTable(9)=6.0
    DHPenetrationTable(10)=5.2
    ShellDiameter=5.7
    bShatterProne=true
    ShellShatterEffectClass=class'DH_Effects.DH_TankAPShellShatterSmall'
    TracerEffect=class'DH_Effects.DH_RedTankShellTracer'
    ShellImpactDamage=class'DH_Engine.DHShellATImpactDamageType'
    ImpactDamage=350
    BallisticCoefficient=1.62
    Speed=50152.0
    MaxSpeed=50152.0
    Tag="M86 APC"
}
