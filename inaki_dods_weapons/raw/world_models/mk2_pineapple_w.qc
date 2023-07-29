
$mostlyopaque

$ModelName jessev92/dods/weapons/mk2_pineapple_w

$model "Mk.II Fragmentation Grenade" mk2_pineapple_w

$SurfaceProp grenade

$Contents solid

$CDMaterials models/jessev92/dods/weapons/mk2_pineapple
$CDMaterials models/jessev92/dods/weapons/frag

$Sequence mk2_pineapple_w {
	mk2_pineapple_w
	fadein 1
	fadeout 1
	fps 1
}

$CollisionModel mk2_pineapple_w
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	//$concave

}
