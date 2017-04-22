//creating a menu
hMenu = uicontextmenu();
// creating sub-menus
hItem1 = uimenu("Label", "Menu1", "Parent", hMenu, "Callback", "disp(""Menu1 selected!"")");
hItem2 = uimenu("Label", "Menu2", "Parent", hMenu, "Callback", "disp(""Menu2 selected!"")");
