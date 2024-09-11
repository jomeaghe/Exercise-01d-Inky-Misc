/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}

{&its morning|Its noon|Its evening}

+ [Stroll down the beach] -> beach2
+ [stroll up the beach]->beach1
+[gaze out at the ocean]->view
-> DONE


==view==
you watch out at the infinite ocean infront of you.
it is {advance_time()}

+[return to the beach]->seashore



== beach2 ==
This is further down the beach.

It is {advance_time()}
{~"a calm breeze is in the air"|"you notice markings in the sand"|"there isnt a cloud in the sky this time of day"}

* {time==1} [pick up some seashells] ->shells
+ [stroll back up the beach] -> seashore



==beach1==
you walk up the beach and notice your at the top of dunes overlooking the beach down below. 

it is {advance_time()}

{~"the beach seems to keep going forever below"|"the waves creep higher and higher up the sand"|"sea turtles return to water down below"}

+[explore the dunes]->dunes
+ [walk back down the beach]->seashore

==dunes==
you attempt to carefully climb down the dunes upon reaching the bottom.
it is {advance_time()}
{~you feel the water hit your feet as it breathes back and forth up the beach"|"the air is colder as you got closer to the water"|"you walk out into the water and feel the refreshing feeling of cooling off"}
+[climb back up the dunes]->beach1

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
 33