local screen_x, screen_y = guiGetScreenSize();
local uiSystem = nil;
local window = nil;

function Start()
    showCursor(true);
    uiSystem = System.Create();
    window = Window.Create();
    uiSystem:RegisterElement(window);

    addEventHandler("onClientRender", getRootElement(), Render);
end
addEventHandler("onClientResourceStart", resourceRoot, Start);

function Render()
    dxDrawImage(0,0,screen_x,screen_y, "Assets/Images/wallpaper_01.jpg");

    uiSystem:Update();
    uiSystem:Render();
end