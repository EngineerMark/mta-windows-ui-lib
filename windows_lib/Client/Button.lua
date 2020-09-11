Button = {};
Button.__index = Window;

function Button.Create(settings, dimensions)
    local t = setmetatable({}, Button);
    t.element = Element.Create(t);
    t.dimensions = dimensions or {pos_x=0,pos_y=0,width=400,height=300};
    t.settings = settings or {};

    return t;
end

function Button:Update()

end

function Button:Render()
    dxDrawRectangle(self.dimensions.pos_x, self.dimensions.pos_y, self.dimensions.width, self.dimensions.height, tocolor(255,255,255,100));
end