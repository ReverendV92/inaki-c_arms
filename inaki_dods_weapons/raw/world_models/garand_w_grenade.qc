
$mostlyopaque

$ModelName jessev92/dods/weapons/garand_w_grenade
$model "M1 Garand" garand_w_grenade

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/garand
$CDMaterials models/jessev92/dods/weapons/m1garand

$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence garand_w_grenade {
	garand_w_grenade
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel garand_w_grenade
{
	$mass 6
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
