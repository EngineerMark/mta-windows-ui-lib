-- Starting point of the UI
-- You can create multiple system, each containing its own settings

System = {};
System.__index = System;

System.defaultValues = {
    ["color"] = "",
    ["colorInteraction"] = ""
};

function System.Create(settings)
    local object = setmetatable({}, System);
    object.element = Element.Create();

    object.settings = System.defaultValues;

    for k,v in pairs(settings) do
        object.settings[k] = v;
    end
    object.elements = {};

    return object;
end

function System:RegisterElement(element)
    if(element~=nil)then
        table.insert(self.elements, element);
    end
end

function System:Update()
    for i=1,#object.elements do
        object.elements[i]:Update();
    end
end

function System:Render()
    for i=1,#object.elements do
        object.elements[i]:Render();
    end
end