
$mostlyopaque

$ModelName jessev92/dods/weapons/k98_w_scoped
$model "Karabiner 98k" k98_w_scoped

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/k98
$CDMaterials models/jessev92/dods/weapons/k98_rg_grenade
$CDMaterials models/jessev92/dods/weapons/k98_scoped

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence k98_w_scoped {
	k98_w_scoped
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel k98_w_scoped
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
