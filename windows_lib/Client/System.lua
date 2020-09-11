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
    object.element = Element.Create(object, object);

    object.settings = System.defaultValues;

    if(settings~=nil and #settings>0)then
        for k,v in pairs(settings) do
            object.settings[k] = v;
        end
    end
    object.elements = {};
    object.fonts = {};

    return object;
end

function System:RegisterElement(object)
    if(object~=nil)then
        object.element = self;
        table.insert(self.elements, object);
    end
end

function System:RegisterFont(name, fontPath)

end

function System:Update()
    if(#self.elements>0)then
        for i=1,#self.elements do
            self.elements[i]:Update();
        end
    end
end

function System:Render()
    if(#self.elements>0)then
        for i=1,#self.elements do
            self.elements[i]:Render();
        end
    end
end