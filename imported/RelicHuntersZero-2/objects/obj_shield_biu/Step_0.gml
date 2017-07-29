///Activation Control

isActive = false;

if (instance_exists_fast(owner))
{
    if (owner.isActive) && (instance_exists_fast(owner.owner))
    {        
        if (owner.owner.inputShield)
        {
            if (owner.owner.stamina >= staminaMin)
            {
                isActive = true;
                owner.owner.stamina -= staminaCost;
            }
        }
        if (owner.owner.throw) isActive = true;
    }
}

