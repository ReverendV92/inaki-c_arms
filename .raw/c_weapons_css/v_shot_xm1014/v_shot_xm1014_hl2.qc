$modelname "weapons\v_shot_xm1014.mdl"
$cdmaterials "models\weapons\V_models\shot_xm1014\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.xm1014_Parent" "ValveBiped.Bip01_Spine2" -2.602465 -16.621706 2.480460 0.000000 179.999980 90.000038 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.xm1014_Shell" "v_weapon.xm1014_Parent" 0.000000 2.780923 0.108837 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.xm1014_Trigger" "v_weapon.xm1014_Parent" 0.000000 2.248202 -1.019186 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.xm1014_Loader" "v_weapon.xm1014_Parent" 0.000000 2.060851 -3.784473 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.xm1014_Bolt" "v_weapon.xm1014_Parent" 0.000000 3.199940 -3.154976 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "xm1014_mirrored_ref.smd"

$attachment "1" "v_weapon.xm1014_Parent" 0.00 3.40 -22.00 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.xm1014_Parent" 0.00 3.40 -5.00 rotate 150.00 345.00 -180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 12.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_12gauge 2 95" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 40.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_12gauge 2 90" }
}
$sequence insert "insert_mirrored_merged" loop snap activity ACT_VM_RELOAD 1 fps 90.00 {
  { event 5004 2 "Weapon_XM1014.InsertShell" }
}
$sequence after_reload "after_reload_mirrored_merged" snap activity ACT_SHOTGUN_RELOAD_FINISH 1 fps 30.00
$sequence start_reload "start_reload_mirrored_merged" snap activity ACT_SHOTGUN_RELOAD_START 1 fps 30.00
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 30.00 {
  { event 5004 1 "Weapon_DEagle.Deploy" }
}
