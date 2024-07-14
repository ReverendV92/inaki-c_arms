$modelname "weapons\v_pist_usp.mdl"
$cdmaterials "models\weapons\V_models\pist_usp\"

$include ".\..\_css_hl2skeleton_renamebones_mirrored.qci"
$include ".\..\_css_hl2skeleton_definebones.qci"

$scale 1.33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

$definebone "v_weapon.USP_Parent" "ValveBiped.Bip01_Spine2" 2.687275 2.451903 -16.858307 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Clip" "v_weapon.USP_Parent" -0.002860 1.734971 0.898215 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Hammer" "v_weapon.USP_Parent" 0.000923 2.260228 1.812729 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Release" "v_weapon.USP_Parent" 0.000922 2.057341 -0.998711 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Silencer" "v_weapon.USP_Parent" 0.000922 2.791602 -4.447788 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Slide" "v_weapon.USP_Parent" 0.000923 2.714309 0.469810 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Switch" "v_weapon.USP_Parent" 0.000922 2.018696 2.054262 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "v_weapon.USP_Trigger" "v_weapon.USP_Parent" 0.000922 2.038018 -0.718533 -0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000

$body "studio" "usp_mirrored_ref.smd"

$attachment "1" "v_weapon.USP_Parent" 0.00 2.75 -6.50 rotate 0.00 180.00 180.00
$attachment "2" "v_weapon.USP_Parent" 0.00 2.90 -1.00 rotate 170.00 0.00 180.00

$sequence idle "idle_mirrored_merged" loop activity ACT_VM_IDLE_SILENCED 1 fps 16.00
$sequence shoot1 "shoot1_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot2 "shoot2_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot3 "shoot3_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK_SILENCED 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shootlast "shootlast_mirrored_merged" snap activity ACT_VM_DRYFIRE_SILENCED 1 fps 32.00 {
  { event 5001 0 "1" }
}
$sequence reload "reload_mirrored_merged" snap activity ACT_VM_RELOAD_SILENCED 1 fps 37.00 {
  { event 5004 0 "Weapon_USP.Slideback2" }
  { event 5004 17 "Weapon_USP.Clipout" }
  { event 5004 40 "Weapon_USP.Clipin" }
  { event 5004 82 "Weapon_USP.Sliderelease" }
}
$sequence draw "draw_mirrored_merged" snap activity ACT_VM_DRAW_SILENCED 1 fps 48.00 {
  { event 5004 26 "Weapon_USP.Slideback" }
}
$sequence add_silencer "add_silencer_mirrored_merged" snap activity ACT_VM_ATTACH_SILENCER 1 fps 37.00 {
  { event 5004 38 "Weapon_USP.AttachSilencer" }
}
$sequence idle_unsil "idle_unsil_mirrored_merged" loop activity ACT_VM_IDLE 1 fps 16.00
$sequence shoot1_unsil "shoot1_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot2_unsil "shoot2_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shoot3_unsil "shoot3_unsil_mirrored_merged" snap activity ACT_VM_PRIMARYATTACK 1 fps 30.00 {
  { event 5001 0 "1" }
  { event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
}
$sequence shootlast_unsil "shootlast_unsil_mirrored_merged" snap activity ACT_VM_DRYFIRE 1 fps 32.00 {
  { event 5001 0 "1" }
}
$sequence reload_unsil "reload_unsil_mirrored_merged" snap activity ACT_VM_RELOAD 1 fps 37.00 {
  { event 5004 0 "Weapon_USP.Slideback2" }
  { event 5004 17 "Weapon_USP.Clipout" }
  { event 5004 40 "Weapon_USP.Clipin" }
  { event 5004 82 "Weapon_USP.Sliderelease" }
}
$sequence draw_unsil "draw_unsil_mirrored_merged" snap activity ACT_VM_DRAW 1 fps 48.00 {
  { event 5004 26 "Weapon_USP.Slideback" }
}
$sequence detach_silencer "detach_silencer_mirrored_merged" snap activity ACT_VM_DETACH_SILENCER 1 fps 37.00 {
  { event 5004 29 "Weapon_USP.DetachSilencer" }
}
