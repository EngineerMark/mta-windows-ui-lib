Window = {};
Window.__index = Window;

function Window.Create(settings, dimensions, resizable, movable)
    local t = setmetatable({}, Window);
    t.element = Element.Create(t);
    t.dimensions = dimensions or {pos_x=0,pos_y=0,width=400,height=300};
    t.settings = settings or {};
    t.resizable = resizable;
    t.movable = movable;

    return t;
end

function Window:Update()

end

function Window:Render()
    dxDrawRectangle(self.dimensions.pos_x, self.dimensions.pos_y, self.dimensions.width, self.dimensions.height, tocolor(255,255,255,100));
end