---------------------------------------------
--  Tenebrous Mist
--
--  Description: Resets TP of all targets in an area of effect.
--  Type: Enfeebling
--  Ignores Shadows
--  Range: Unknown radial
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
  if(mob:getFamily() == 316) then
    local mobSkin = mob:getModelId();

    if (mobSkin == 1805) then
        return 0;
    else
        return 1;
    end
  end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
   local reset = 0;
   if (target:getTP() == 0) then
      skill:setMsg(MSG_NO_EFFECT); -- no effect
   else
      target:setTP(reset);
      skill:setMsg(MSG_TP_REDUCED);
   end
   return reset;
end;
