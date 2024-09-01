require "MF_ISMoodle"

-- I feel like there is a more elegant way to do this
-- I also think that this might add the moodle to everyone
local function addAllergyMoodle()
  MF.createMoodle("Allergy")
end
Events.OnGameBoot.Add(addAllergyMoodle);

local base_perform = ISEatFoodAction.perform;
function ISEatFoodAction:perform()
  base_perform(self);

  if self.item:getType() == "Egg" then
    print("Egg eaten");
    MF.getMoodle("Allergy"):setValue(.35) -- value is between 0 and 1
  end
end