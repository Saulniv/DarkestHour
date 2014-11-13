//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DH_JagdpanzerIVL70CannonShellAPCR extends DH_ROTankCannonShellHVAP;

defaultproperties
{
     MechanicalRanges(1)=(Range=100,RangeValue=4.000000)
     MechanicalRanges(2)=(Range=200,RangeValue=12.000000)
     MechanicalRanges(3)=(Range=300,RangeValue=18.000000)
     MechanicalRanges(4)=(Range=400,RangeValue=25.000000)
     MechanicalRanges(5)=(Range=500,RangeValue=32.000000)
     MechanicalRanges(6)=(Range=600,RangeValue=40.000000)
     MechanicalRanges(7)=(Range=700,RangeValue=47.000000)
     MechanicalRanges(8)=(Range=800,RangeValue=55.000000)
     MechanicalRanges(9)=(Range=900,RangeValue=62.000000)
     MechanicalRanges(10)=(Range=1000,RangeValue=74.000000)
     MechanicalRanges(11)=(Range=1100,RangeValue=80.000000)
     MechanicalRanges(12)=(Range=1200,RangeValue=88.000000)
     MechanicalRanges(13)=(Range=1300,RangeValue=96.000000)
     MechanicalRanges(14)=(Range=1400,RangeValue=104.000000)
     MechanicalRanges(15)=(Range=1500,RangeValue=109.000000)
     MechanicalRanges(16)=(Range=1600,RangeValue=122.000000)
     MechanicalRanges(17)=(Range=1700,RangeValue=123.000000)
     MechanicalRanges(18)=(Range=1800,RangeValue=138.000000)
     MechanicalRanges(19)=(Range=1900,RangeValue=142.000000)
     MechanicalRanges(20)=(Range=2000,RangeValue=149.000000)
     MechanicalRanges(21)=(Range=2200,RangeValue=167.000000)
     MechanicalRanges(22)=(Range=2400,RangeValue=189.000000)
     MechanicalRanges(23)=(Range=2600,RangeValue=210.000000)
     MechanicalRanges(24)=(Range=2800,RangeValue=227.000000)
     MechanicalRanges(25)=(Range=3000,RangeValue=252.000000)
     bMechanicalAiming=true
     DHPenetrationTable(0)=25.299999
     DHPenetrationTable(1)=23.400000
     DHPenetrationTable(2)=21.600000
     DHPenetrationTable(3)=19.900000
     DHPenetrationTable(4)=16.400000
     DHPenetrationTable(5)=15.000000
     DHPenetrationTable(6)=13.500000
     DHPenetrationTable(7)=11.400000
     DHPenetrationTable(8)=10.600000
     DHPenetrationTable(9)=9.200000
     DHPenetrationTable(10)=7.800000
     ShellDiameter=7.500000
     bIsAlliedShell=false
     TracerEffect=class'DH_Effects.DH_OrangeTankShellTracer'
     ShellImpactDamage=class'DH_Vehicles.DH_JagdpanzerIVL70CannonShellDamageAPCR'
     ImpactDamage=475
     BallisticCoefficient=1.520000
     SpeedFudgeScale=0.400000
     Speed=67594.000000
     MaxSpeed=67594.000000
     StaticMesh=StaticMesh'DH_Tracers.shells.German_shell'
     Tag="PzGr.40/42"
}
