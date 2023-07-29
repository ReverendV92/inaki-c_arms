
$mostlyopaque

$ModelName jessev92/dods/weapons/mp40_w
$model "MP40" mp40_w

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/mp40

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence mp40_w {
	mp40_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel mp40_w_phy
{
	$mass 9
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
