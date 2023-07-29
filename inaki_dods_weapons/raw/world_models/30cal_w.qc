
$mostlyopaque

$ModelName jessev92/dods/weapons/30cal_w

$model "M1919 Browning Machine Gun" 30cal_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/30cal
$CDMaterials models/jessev92/dods/weapons/m1919
$CDMaterials models/jessev92/dods/weapons/m1919a4

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence 30cal_w {
	30cal_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel 30cal_w_phy
{
	$mass 14
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
