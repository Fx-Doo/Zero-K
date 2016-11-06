unitDef = {
  unitname            = [[a_shiptorpbt]],
  name                = [[Hunter]],
  description         = [[Torpedo-Boat Raider]],
  acceleration        = 0.048,
  activateWhenBuilt   = true,
  brakeRate           = 0.043,
  buildCostEnergy     = 100,
  buildCostMetal      = 100,
  builder             = false,
  buildPic            = [[DCLSHIP.png]],
  buildTime           = 100,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[SHIP]],
  collisionVolumeOffsets = [[0 -7 0]],
  collisionVolumeScales  = [[34 34 80]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {
    description_de = [[Torpedofregatte]],
    description_pl = [[Fregata torpedowa]],
    helptext       = [[The Hunter is a mobile anti-submarine unit. It boasts a massive area of effect.]],
	helptext_de    = [[Die relativ g�nstige Torpedofregatte besitzt eine Waffe speziell zur U-Jagd, die auch im Stande ist Schiffe zu treffen.]],
	helptext_pl    = [[Fregata torpedowa to odpowiedz na jednostki podwodne; moze tez strzelac w statki.]],
	modelradius    = [[14]],
	turnatfullspeed = [[1]],
  },

  explodeAs           = [[BIG_UNITEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[hunter]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  mass                = 240,
  maxDamage           = 310,
  maxVelocity         = 3.9,
  minCloakDistance    = 75,
  minWaterDepth       = 5,
  movementClass       = [[BOAT4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
  objectName          = [[SHIPRAIDTORP]],
  script              = [[a_shiptorpbt.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[SMALL_UNITEX]],
  side                = [[ARM]],
  sightDistance       = 450,
  smoothAnim          = true,
  sonarDistance       = 450,
  turnRate            = 800,
  waterline           = 4,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 10,
      avoidFriendly           = false,
      bouncerebound           = 0.5,
      bounceslip              = 0.5,
	  burnblow                = 1,
      canAttackGround		  = false,	-- workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 190,
        subs    = 190,
      },

      edgeEffectiveness       = 0.6,
      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      groundbounce            = 1,
      impulseBoost            = 1,
      impulseFactor           = 0.9,
      interceptedByShieldType = 1,
	  flightTime              = 0.9,
	  leadlimit               = 0,
      model                   = [[wep_m_ajax.s3o]],
      myGravity               = 10.1,
      numbounce               = 4,
      noSelfDamage            = true,
      range                   = 230,
      reloadtime              = 2.5,
      soundHit                = [[TorpedoHitVariable]],
      soundHitVolume          = 2.8,
      soundStart              = [[weapon/torp_land]],
      soundStartVolume        = 0.8,
      startVelocity           = 20,
      tolerance               = 100000,
      tracks                  = true,
      turnRate                = 200000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 440,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 400,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shipraidtorp.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ a_shiptorpbt = unitDef })
