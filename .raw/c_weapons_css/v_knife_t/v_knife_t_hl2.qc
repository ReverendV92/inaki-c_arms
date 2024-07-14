$modelname "weapons\v_knife_t.mdl"
$cdmaterials "models\weapons\v_models\knife_t\"

$include ".\..\_css_hl2skeleton_renamebones.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.knife_Parent" "ValveBiped.Bip01_Spine2" -4.770313 -17.804710 -8.518756 0.000000 0.000000 89.999983 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.Knife_Handle" "v_weapon.knife_Parent" 4.771459 -5.564795 3.605345 5.030054 -79.325722 -0.007334 0.000000 0.000000 0.000000 0.000001 0.000001 0.000000

$body "studio" "knife_t_ref.smd"

$sequence idle "idle_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence draw "draw_merged" snap activity ACT_VM_DRAW 1 fps 45.00
$sequence stab "stab_merged" snap activity ACT_VM_HITCENTER 1 fps 35.00
$sequence stab_miss "stab_miss_merged" snap activity ACT_VM_MISSCENTER 1 fps 40.00
$sequence midslash1 "midslash1_merged" snap activity ACT_VM_HITCENTER 1 fps 55.00
$sequence midslash2 "midslash2_merged" snap activity ACT_VM_HITCENTER 1 fps 55.00
