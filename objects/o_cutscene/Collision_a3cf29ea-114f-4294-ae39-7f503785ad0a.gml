/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
    var ob = o_player;

    var og = o_player;

    var op = o_player;

    

    create_textevent(

    [                                                                                              //myText

        "Sorry Greeny, but I'm way cooler than you.",

        "Wait, WHAT?",

        "I'm Greeny. No-one's cooler than me.",

        "What do you think, Red?",

        ["Bluey is cooler.", "Greeny is cooler."],

        "Haha, see?",

        "Tch...",

        "HA! It's as I said.",

        "Aw..."

    ],

    [ob, og, og, ob, op, ob, og, og, ob],                                                          //mySpeakers

    [ [23,4, 33,0], [7,1, 11,0], [21,1, 29,0], [-1], [-1], [1,5, 5,0], [-1], [1,6, 3,0], [-1] ],   //myEffects

    -1,                                                                                            //myTextSpeed

    [0, 0, 0, 0, 1, 0, 0, 0, 0],                                                                   //myTypes

    [0, 0, 0, 0, [5, 7], 0, -1 ,0, -1],                                                            //myNextLine

    -1,                                                                                            //myChangeVars

    -1,                                                                                            //myTextCol

    [0, 3, 2, 1, 0, 5, 3, 1, 2],                                                                   //myEmotion

    -1                                                                                             //myEmote

    );