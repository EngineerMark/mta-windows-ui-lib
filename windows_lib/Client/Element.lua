-- All elements have this class, so we can differentiate all objects
-- using unique identifier (n+1)

local LAST_VALUE = 0;

Element = {};
Element.__index = Element;

function Element.Create()
    local t = setmetatable({}, Element);
    t.id = LAST_VALUE+1;

    LAST_VALUE = LAST_VALUE+1;

    return t;
end