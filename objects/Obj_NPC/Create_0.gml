/// @description Variable definitions and decision code

// FOR THE DEMO VERSION ALL NPC ATTRIBUTES ARE HARD CODED

NPC_name = "nobody";

// NPC inventory. Everybody has something.
// This will be populated from a master NPC array similar to the items array
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// NPC default dialogue choices, populated from NPC master array
dialogue_options = [];
options_count = 0;

// NPC default dialoge responses, populated from NPC master array
responses = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// Evidence which the NPC can reveal
// Populated when a case starts, cleared when the case concludes
knowsabout = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}