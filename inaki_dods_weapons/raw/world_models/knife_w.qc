
$mostlyopaque

$ModelName jessev92/dods/weapons/knife_w

$model "Mk.I Trench Knife" knife_w

$SurfaceProp weapon

$Contents solid

$CDMaterials models/jessev92/dods/weapons/amerk
$CDMaterials models/jessev92/dods/weapons/knife
$CDMaterials models/jessev92/dods/weapons/marki

//$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0
//$Attachment "eject" "eject" 0 0 0 rotate 0 0 0

$Sequence knife_w {
	knife_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel knife_w
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
