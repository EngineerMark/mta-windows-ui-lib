-- All elements have this class, so we can differentiate all objects
-- using unique identifier (n+1)

local LAST_VALUE = 0;

Element = {};
Element.__index = Element;

function Element.Create(object, system)
    local t = setmetatable({}, Element);
    t.id = LAST_VALUE+1;
    t.object = object;
    t.parentSystem = system or nil;

    LAST_VALUE = LAST_VALUE+1;

    outputDebugString("[WindowsUI] Created new "..(getTableName(object) or "UI element").." with ID "..t.id);

    return t;
end