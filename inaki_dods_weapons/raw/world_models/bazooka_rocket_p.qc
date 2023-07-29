
$mostlyopaque

$staticprop
$autocenter

//$origin 0 0 0 270

$ModelName jessev92/dods/weapons/bazooka_rocket_p
$model "M6A1" bazooka_rocket_p

$SurfaceProp metal_barrel
$Contents solid

$CDMaterials models/jessev92/dods/weapons/bazooka
$CDMaterials models/jessev92/dods/weapons/m1a1bazooka

//$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
//$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence bazooka_rocket_p {
	bazooka_rocket_p
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel bazooka_rocket_p_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
