/// @description Variable definitions and decision code

// FOR THE DEMO VERSION ALL NPC ATTRIBUTES ARE HARD CODED

NPC_name = "Gate Guard";

// NPC inventory. Everybody has something.
// This will be populated from a master NPC array similar to the items array
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["Hello","Who are you?","Open the gate!"];
options_count = 2;

// NPC default dialoge responses, populated from NPC master array
responses = ["Hello, yourself","I'm the guy who decides whether or not you get in the gate",
	"You don't have any right to go through", "Your papers are in order, go ahead"];


// Evidence which the NPC can reveal
// Populated when a case starts, cleared when the case concludes
knowsabout = [];
