
$mostlyopaque

$ModelName jessev92/dods/weapons/stielhandgranate_w

$model "Stielhandgranate" stielhandgranate_w

$SurfaceProp grenade

$Contents solid

$CDMaterials models/jessev92/dods/weapons/stielhandgranate
$CDMaterials models/jessev92/dods/weapons/stick

$Sequence stielhandgranate_w {
	stielhandgranate_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel stielhandgranate_w_phy
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$concave

}
