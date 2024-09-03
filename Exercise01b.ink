/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [Turn around and exit tunnel] -> tunnel_exit
+ [Pick up a torch]-> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Continue] -> cave_mouth
->END

== west_tunnel==
You are in the west. It is very dark. You think you can possibly see some skeletons but you can't tell because of the darkness.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Continue] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. Above the coins there is an engraving on the wall which states, "STAY AWAY".
*Return to entrance and investigate the rest of the cave. 
-> cave_mouth
*Count money
You find the money is worth hundreds of thousands of dollars. As you are counting the money the cave begins to collapse trapping you in. When you are trapped in you see a passageway to the west tunnel where you see pirate skeletons that you will soon share the same fate with.
-> END

== west_tunnel_lit ==
The light of your torch allows you see that you have entered a smaller cave. In the cave there are what appear to be pirate skeletons.
* search skeletons
You approach the skeletons and find a map to treasure which appears to be in the east tunnel of the cave. So you head back to the start of the cave. 
-> cave_mouth
-> END

== tunnel_exit ==
You have exited the tunnel. You make it home and later learn that another explorer went into the tunnel and met a tragic fate. A fate that easily could have been yours.
-> END



