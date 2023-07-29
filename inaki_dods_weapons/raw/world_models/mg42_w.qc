
$mostlyopaque

$ModelName jessev92/dods/weapons/mg42_w

$model "MG 42" mg42_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/mg42

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence mg42_w {
	mg42_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel mg42_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
