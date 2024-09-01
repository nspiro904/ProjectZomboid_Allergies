require('NPCs/MainCreationMethods');

--need to add oneategg to OnEat callback of egg

local function addTrait()

  -- The game looks for the texture in 'media/ui/Traits/trait_{traitID}.png'
  local traitID = 'eggallergy';
  local traitName = 'Egg  Allergy';
  local traitDesc = 'Will trigger anaphylaxis which eventually leads to death, can use epipen to save yourself.';
  local traitCost = -15;

  local allergy = TraitFactory.addTrait(traitID, traitName, traitCost, traitDesc, false, false );

end

Events.OnGameBoot.Add(addTrait);