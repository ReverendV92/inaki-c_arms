
$mostlyopaque

$staticprop
$autocenter

$origin 0 0 0 180

$ModelName jessev92/dods/weapons/garand_grenade_p
$model "M1 Garand" garand_grenade_p

$SurfaceProp weapon
$Contents solid

$CDMaterials models/jessev92/dods/weapons/garand
$CDMaterials models/jessev92/dods/weapons/m1garand

//$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
//$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence garand_grenade_p {
	garand_grenade_p
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel garand_grenade_p
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
