/*
-------------------------------------------------------------------------------------
QC file created by Fix decompiled QC script - 2012/06/26 - DJ_Inaki@hotmail.com
-------------------------------------------------------------------------------------
*/
$include .\..\_v_models_name.qci

$modelname $modeldir$MG42$CArmSuffix$
$cdmaterials "models/jessev92/dods/weapons/MG42\"


// --------- Body Groups ---------
$body "MG42" "v_MG42_ref.smd"

$hboxset "Iñaki"
$include .\..\_v_models_hl2_definebones.qci

$definebone "ValveBiped.MG42_base" "ValveBiped.Bip01_Spine2" -11.852096 65.308250 -15.960594 0.872672 -77.546963 -30.290216 0 0 0 0 0 0
$definebone "ValveBiped.bullet_linkstart" "ValveBiped.MG42_base" -0.522480 3.822270 6.054024 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet1" "ValveBiped.bullet_linkstart" 0 0 0 0 0.794807 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet2" "ValveBiped.bullet1" 0.793383 0 0 0 -2.745557 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet3" "ValveBiped.bullet2" 0.802661 0 0 0 2.810186 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet4" "ValveBiped.bullet3" 0.811886 0 0 0 -3.264771 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet5" "ValveBiped.bullet4" 0.812672 0 0 0 4.362386 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet6" "ValveBiped.bullet5" 0.803086 0 0 0 -2.936695 0 0 0 0 0 0 0
$definebone "ValveBiped.bullet7" "ValveBiped.bullet6" 0.793437 0 0 0 2.720461 0 0 0 0 0 0 0
$definebone "ValveBiped.trigger" "ValveBiped.MG42_base" -1.330251 0 2.658999 0 90 0 0 0 0 0 0 0
$definebone "ValveBiped.bipod_main_pivot" "ValveBiped.MG42_base" -1.193819 -0.119650 29.290649 0 90 179.999966 0 0 0 0 0 0
$definebone "ValveBiped.bipod_2nd_pivot" "ValveBiped.bipod_main_pivot" 0 -0.393765 -0.002686 -90 -90 0 0 0 0 0 0 0
$definebone "ValveBiped.bipod_right_leg_pivot" "ValveBiped.bipod_2nd_pivot" 0.943554 0 1.162176 0 90 179.999966 0 0 0 0 0 0
$definebone "ValveBiped.bipod_left_leg_pivot" "ValveBiped.bipod_2nd_pivot" -0.883280 0 1.162176 0 90 -179.999966 0 0 0 0 0 0
$definebone "ValveBiped.ammo_latch" "ValveBiped.MG42_base" -5.117198 0 8.733499 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.bolt" "ValveBiped.MG42_base" -3.071957 -2.009960 1.014001 0 90 0 0 0 0.000001 0 0 0
$definebone "ValveBiped.bolt_handle" "ValveBiped.bolt" 0 0 1.199393 0 0 0 0 0 0.000001 0 0 0


// --------- Attachments ---------
$attachment "0" "ValveBiped.MG42_base" -3.40 0.00 42.00 rotate -90.00 0.00 0.00
$attachment "1" "ValveBiped.MG42_base" -4.50 -1.30 6.00 rotate 0.00 -135.00 180.00


// --------- Animation Sequences ---------
$sequence reload "reload_fixed" ACT_VM_RELOAD 1 fps 33.00 {
  { event 5004 0 "DODS.MG42.Draw" }
  { event 5004 17 "DODS.MG42.CoverUp" }
  { event 5004 48 "DODS.MG42.bulletchain1" }
  { event 5004 86 "DODS.MG42.CoverDown" }
  { event 5004 86 "DODS.MG42.BulletChain2" }
  { event 5004 104 "DODS.MG42.BoltBack" }
  { event 5004 106 "DODS.MG42.Draw" }
  { event 5004 115 "DODS.MG42.BoltForward" }
  { event 5004 140 "DODS.MG42.Draw" }
}
$sequence draw "draw_fixed" ACT_VM_DRAW 1 fps 33.00 {
  { event 5004 5 "DODS.MG42.Draw" }
}

$animation aupidle8 "upidle8_fixed" fps 15.00
$animation aupidle7 "upidle7_fixed" fps 15.00
$animation aupidle6 "upidle6_fixed" fps 15.00
$animation aupidle5 "upidle5_fixed" fps 15.00
$animation aupidle4 "upidle4_fixed" fps 15.00
$animation aupidle3 "upidle3_fixed" fps 15.00
$animation aupidle2 "upidle2_fixed" fps 15.00
$animation aupidle1 "upidle1_fixed" fps 15.00
$animation aupidleempty "upidleempty_fixed" fps 15.00
$sequence "upidle" { aupidleempty aupidle1 aupidle2 aupidle3 aupidle4 aupidle5 aupidle6 aupidle7 aupidle8 blendwidth 9 blend ammo 0 8 } ACT_VM_IDLE 1 fps 15.00

//$sequence upidle "upidle_fixed" ACT_VM_IDLE 1 fps 15.00
$sequence upidle8 "upidle8_fixed" ACT_VM_IDLE_8 1 fps 15.00
$sequence upidle7 "upidle7_fixed" ACT_VM_IDLE_7 1 fps 15.00
$sequence upidle6 "upidle6_fixed" ACT_VM_IDLE_6 1 fps 15.00
$sequence upidle5 "upidle5_fixed" ACT_VM_IDLE_5 1 fps 15.00
$sequence upidle4 "upidle4_fixed" ACT_VM_IDLE_4 1 fps 15.00
$sequence upidle3 "upidle3_fixed" ACT_VM_IDLE_3 1 fps 15.00
$sequence upidle2 "upidle2_fixed" ACT_VM_IDLE_2 1 fps 15.00
$sequence upidle1 "upidle1_fixed" ACT_VM_IDLE_1 1 fps 15.00
$sequence upidleempty "upidleempty_fixed" ACT_VM_IDLE_EMPTY 1 fps 15.00

$animation adownidle8 "downidle8_fixed" fps 15.00
$animation adownidle7 "downidle7_fixed" fps 15.00
$animation adownidle6 "downidle6_fixed" fps 15.00
$animation adownidle5 "downidle5_fixed" fps 15.00
$animation adownidle4 "downidle4_fixed" fps 15.00
$animation adownidle3 "downidle3_fixed" fps 15.00
$animation adownidle2 "downidle2_fixed" fps 15.00
$animation adownidle1 "downidle1_fixed" fps 15.00
$animation adownidleempty "downidleempty_fixed" fps 15.00
$sequence "downidle" { adownidleempty adownidle1 adownidle2 adownidle3 adownidle4 adownidle5 adownidle6 adownidle7 adownidle8 blendwidth 9 blend ammo 0 8 } ACT_VM_IDLE_DEPLOYED 1 fps 15.00

//$sequence downidle "downidle_fixed" ACT_VM_IDLE_DEPLOYED 1 fps 15.00
$sequence downidle8 "downidle8_fixed" ACT_VM_IDLE_DEPLOYED_8 1 fps 15.00
$sequence downidle7 "downidle7_fixed" ACT_VM_IDLE_DEPLOYED_7 1 fps 15.00
$sequence downidle6 "downidle6_fixed" ACT_VM_IDLE_DEPLOYED_6 1 fps 15.00
$sequence downidle5 "downidle5_fixed" ACT_VM_IDLE_DEPLOYED_5 1 fps 15.00
$sequence downidle4 "downidle4_fixed" ACT_VM_IDLE_DEPLOYED_4 1 fps 15.00
$sequence downidle3 "downidle3_fixed" ACT_VM_IDLE_DEPLOYED_3 1 fps 15.00
$sequence downidle2 "downidle2_fixed" ACT_VM_IDLE_DEPLOYED_2 1 fps 15.00
$sequence downidle1 "downidle1_fixed" ACT_VM_IDLE_DEPLOYED_1 1 fps 15.00
$sequence downidleempty "downidleempty_fixed" ACT_VM_IDLE_DEPLOYED_EMPTY 1 fps 15.00


$animation adowntoup8 "downtoup8_fixed" fps 30.00
$animation adowntoup7 "downtoup7_fixed" fps 30.00
$animation adowntoup6 "downtoup6_fixed" fps 30.00
$animation adowntoup5 "downtoup5_fixed" fps 30.00
$animation adowntoup4 "downtoup4_fixed" fps 30.00
$animation adowntoup3 "downtoup3_fixed" fps 30.00
$animation adowntoup2 "downtoup2_fixed" fps 30.00
$animation adowntoup1 "downtoup1_fixed" fps 30.00
$animation adowntoupempty "downtoupempty_fixed" fps 30.00
$sequence "downtoup" { adowntoupempty adowntoup1 adowntoup2 adowntoup3 adowntoup4 adowntoup5 adowntoup6 adowntoup7 adowntoup8 blendwidth 9 blend ammo 0 8
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
} ACT_VM_UNDEPLOY 1 fps 33.00

/*
$sequence downtoup "downtoup_fixed" ACT_VM_UNDEPLOY 1 fps 30.00 {
  { event 5004 6 "DODS.MG42.Draw" }
}
*/
$sequence downtoup8 "downtoup8_fixed" ACT_VM_UNDEPLOY_8 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup7 "downtoup7_fixed" ACT_VM_UNDEPLOY_7 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup6 "downtoup6_fixed" ACT_VM_UNDEPLOY_6 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup5 "downtoup5_fixed" ACT_VM_UNDEPLOY_5 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup4 "downtoup4_fixed" ACT_VM_UNDEPLOY_4 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup3 "downtoup3_fixed" ACT_VM_UNDEPLOY_3 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup2 "downtoup2_fixed" ACT_VM_UNDEPLOY_2 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoup1 "downtoup1_fixed" ACT_VM_UNDEPLOY_1 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.RaiseBipod" }
  { event 5004 2 "DODS.MG42.Draw" }
}
$sequence downtoupempty "downtoupempty_fixed" ACT_VM_UNDEPLOY_EMPTY 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.Draw" }
  { event 5004 2 "DODS.MG42.Draw" }
}

$animation auptodown8 "uptodown8_fixed" fps 30.00
$animation auptodown7 "uptodown7_fixed" fps 30.00
$animation auptodown6 "uptodown6_fixed" fps 30.00
$animation auptodown5 "uptodown5_fixed" fps 30.00
$animation auptodown4 "uptodown4_fixed" fps 30.00
$animation auptodown3 "uptodown3_fixed" fps 30.00
$animation auptodown2 "uptodown2_fixed" fps 30.00
$animation auptodown1 "uptodown1_fixed" fps 30.00
$animation auptodownempty "uptodownempty_fixed" fps 30.00
$sequence "uptodown" { auptodownempty auptodown1 auptodown2 auptodown3 auptodown4 auptodown5 auptodown6 auptodown7 auptodown8 blendwidth 9 blend ammo 0 8
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
} ACT_VM_DEPLOY 1 fps 37.00

/*
$sequence uptodown "uptodown_fixed" ACT_VM_DEPLOY 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
*/
$sequence uptodown8 "uptodown8_fixed" ACT_VM_DEPLOY_8 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown7 "uptodown7_fixed" ACT_VM_DEPLOY_7 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown6 "uptodown6_fixed" ACT_VM_DEPLOY_6 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown5 "uptodown5_fixed" ACT_VM_DEPLOY_5 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown4 "uptodown4_fixed" ACT_VM_DEPLOY_4 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown3 "uptodown3_fixed" ACT_VM_DEPLOY_3 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown2 "uptodown2_fixed" ACT_VM_DEPLOY_2 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodown1 "uptodown1_fixed" ACT_VM_DEPLOY_1 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}
$sequence uptodownempty "uptodownempty_fixed" ACT_VM_DEPLOY_EMPTY 1 fps 30.00 {
  { event 5004 0 "DODS.MG42.DeployBipod" }
  { event 5004 13 "DODS.MG42.Draw" }
}



$animation aupshoot8 "upshoot8_fixed" fps 50.00
$animation aupshoot7 "upshoot7_fixed" fps 50.00
$animation aupshoot6 "upshoot6_fixed" fps 50.00
$animation aupshoot5 "upshoot5_fixed" fps 50.00
$animation aupshoot4 "upshoot4_fixed" fps 50.00
$animation aupshoot3 "upshoot3_fixed" fps 50.00
$animation aupshoot2 "upshoot2_fixed" fps 50.00
$animation aupshoot1 "upshoot1_fixed" fps 50.00
$sequence "upshoot" { aupshoot1 aupshoot1 aupshoot2 aupshoot3 aupshoot4 aupshoot5 aupshoot6 aupshoot7 aupshoot8 blendwidth 9 blend ammo 0 8 
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
} ACT_VM_PRIMARYATTACK 1 fps 50.00

/*
$sequence upshoot "upshoot_fixed" ACT_VM_PRIMARYATTACK 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
*/
$sequence upshoot8 "upshoot8_fixed" ACT_VM_PRIMARYATTACK_8 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot7 "upshoot7_fixed" ACT_VM_PRIMARYATTACK_7 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot6 "upshoot6_fixed" ACT_VM_PRIMARYATTACK_6 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot5 "upshoot5_fixed" ACT_VM_PRIMARYATTACK_5 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot4 "upshoot4_fixed" ACT_VM_PRIMARYATTACK_4 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot3 "upshoot3_fixed" ACT_VM_PRIMARYATTACK_3 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot2 "upshoot2_fixed" ACT_VM_PRIMARYATTACK_2 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence upshoot1 "upshoot1_fixed" ACT_VM_PRIMARYATTACK_1 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}


$animation adownshoot8 "downshoot8_fixed" fps 50.00
$animation adownshoot7 "downshoot7_fixed" fps 50.00
$animation adownshoot6 "downshoot6_fixed" fps 50.00
$animation adownshoot5 "downshoot5_fixed" fps 50.00
$animation adownshoot4 "downshoot4_fixed" fps 50.00
$animation adownshoot3 "downshoot3_fixed" fps 50.00
$animation adownshoot2 "downshoot2_fixed" fps 50.00
$animation adownshoot1 "downshoot1_fixed" fps 50.00
$sequence "downshoot" { adownshoot1 adownshoot1 adownshoot2 adownshoot3 adownshoot4 adownshoot5 adownshoot6 adownshoot7 adownshoot8 blendwidth 9 blend ammo 0 8 
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
} ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00

/*
$sequence downshoot "downshoot_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
*/
$sequence downshoot_1 "downshoot_1_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot_2 "downshoot_2_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot_3 "downshoot_3_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot8 "downshoot8_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_8 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot7 "downshoot7_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_7 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot6 "downshoot6_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_6 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot5 "downshoot5_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_5 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot4 "downshoot4_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_4 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot3 "downshoot3_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_3 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot2 "downshoot2_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_2 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}
$sequence downshoot1 "downshoot1_fixed" ACT_VM_PRIMARYATTACK_DEPLOYED_1 1 fps 50.00 {
  //{ event CL_EVENT_MUZZLEFLASH0 1 "33" }
  //{ event CL_EVENT_SPRITEGROUP_CREATE 1 "3" }
}

