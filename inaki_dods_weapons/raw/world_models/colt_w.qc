
$mostlyopaque

$ModelName jessev92/dods/weapons/colt_w

$model "Colt M1911" colt_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/colt
$CDMaterials models/jessev92/dods/weapons/1911
$CDMaterials models/jessev92/dods/weapons/m1911
$CDMaterials models/jessev92/dods/weapons/colt1911

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence colt_w {
	colt_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel colt_w_phy
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
