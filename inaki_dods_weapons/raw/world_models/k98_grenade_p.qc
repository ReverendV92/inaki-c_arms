
$mostlyopaque

$staticprop
$autocenter

$origin 0 0 0 180

$ModelName jessev92/dods/weapons/k98_grenade_p
$model "Karabiner 98k" k98_grenade_p

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/k98
$CDMaterials models/jessev92/dods/weapons/k98_rg_grenade
$CDMaterials models/jessev92/dods/weapons/k98_scoped

//$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
//$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence k98_grenade_p {
	k98_grenade_p
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel k98_grenade_p
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
