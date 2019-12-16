
int page=randint(20,3000);
int inscr=randint(5,20);
int feet=randint(3,8);
int height=randint(9,15);
double s=0;
string_t dwarf,user,ansone,anstwo,ansthree,ansfour,mapOption;
void notAns(){//Used when someone inputs an answer thats not an option              i dont wanna rewrite this every time
    printf("That is not an option, please try again, typing '1', '2', or '3'\n");
}  
void storyMap(){
    printf("                                                         Woods\n ");
    printf("                                                          |\n");
    printf("                                                           |\n");
    printf("                                                 ---------------------\n");
    printf("                                                /          |          \\ \n                                               /           |           \\ \n                                              /            |            \\ \n");
    printf("                                             /             |             \\ \n");
    printf("                                            /              |              \\ \n");
    printf("                                           /               |               \\ \n");
    printf("                                          /                |                \\ \n");
    printf("                                         /                 |                 \\ \n");
    printf("                                        /                  |                  \\ \n");
    printf("                                       /                   |                   \\ \n");
    printf("                                    Book                 Armor                Sword\n");
    printf("                                   / | \\                / | \\                / | \\ \n ");
    printf("                                 /  |  \\              /  |  \\              /  |  \\ \n");
    printf("                                 /   |   \\            /   |   \\            /   |   \\ \n");
    printf("                                /    |    \\          |    |    |          /    |    \\ \n");
    printf("                               |     |     |         |    |    |         |     |     |  \n");
    printf("                               |     |     |         |    |    |         |     |     |  \n");
    printf("                       Pugna Scientia|Incementrum  Put On | Toss Armor  Attack | Cut Free\n");
    printf("                                     |                    |                    |\n");
    printf("                                 Cor Impentum         Give Armor              Toss\n");
}
void endGame(){
    sleep(s);
    printf("Thank you for playing my game %s!\n",user);
    sleep(s);
    printf("I'd encourage you to play as many times as you'd like and see all the different outcomes.\n");
    sleep(s);
    printf(":)\n");
}
void mapOpt(){
    printf("Before you start, would you like to see the a map of the story?\n[Type '1' for yes, and '2' for no]\n");
    do{
        scanf("%s",&mapOption);
        if(mapOption == "1"){
            storyMap();
            sleep(s);
        }
        if(mapOption == "2"){
            sleep(s);
        }
        if(mapOption != "1" && mapOption != "2"){
            printf("That is not an option, please try again, typing '1' or '2'\n");        
        }    
    }while(mapOption != "1" && mapOption != "2");  
}
void pugnaScientia(){//End 1
    sleep(s);
    printf("You cast the Pugna Scientia spell on yourself, and focus in on the cyclops.\n");
    sleep(s);
    printf("You run at the cyclops. As he swings his broad club at you, you duck \
and jump up at his neck, swinging around to \nbehind him, pulling him down to the ground and choking him until goes limp.\n");
    sleep(s);
    printf("You have defeated the cyclops with your life, saving the now stunned %s.\n",dwarf);
    endGame();
}
void incrementum(){//End 2
    printf("You turn quickly to %s, casting the Incrementum spell on him.\n",dwarf);
    sleep(s);
    printf("%s starts growing rapidly, destroying the rope wrapped around him.\n",dwarf);
    sleep(s);
    printf("He doesn't stop until his knees are about the height of the trees above you.\n");
    sleep(s);
    printf("You watch as he take one step to kill the cyclops, but his foot is two big, and takes you as well.\n");
    printf("You die, but %s lives, as a 400 foot dwarf.\n");
    endGame();
}
void corImpetum(){//End 3
    sleep(s);
    printf("You cast the Cor Impetum spell on the cyclops as he charges towards you with his club.\n");
    sleep(s);
    printf("He stops in his tracks, near the tree %s is tied to, he looks at you, worried, then falls over, right on top of %s, \ncrushing him.\n",dwarf,dwarf);
    sleep(s);
    printf("You've escaped the cyclops with your life, but at the cost of %s's.",dwarf);
    printf("Type 1 to see a story map of the game, and 2 to end the game.\n");
    endGame(); 
}    
void putArmor(){//End 4
    sleep(s);
    printf("You jump behind a nearby tree to take temporary refuge while you put on the armor.\n");
    sleep(s);
    printf("Upon fastening the final piece of armor, you notice the inscriptions on it begin to glow.\n");
    sleep(s);
    printf("With a new found confidence, you charge at the cyclops.\nHe swings his large club at your head and as it hits, the armor repels the club, firing the club \
back, smacking \nthe cyclops in the face.\n");
    printf("You have survived with your life, saving the stunned %s.\n",dwarf);
    endGame();
}
void tossArmor(){//End 5
    sleep(s);
    printf("'%s!' you shout, as you toss the armor to the dwarf.\n",dwarf);
    sleep(s);
    printf("The armor lands at the feet of %s.\n",dwarf);
    sleep(s);
    printf("'%s...Why would you do that' says %s, still tied up, only able to stare at the armor.\n",user,dwarf);
    sleep(s);
    printf("The cyclops smashes his club down upon you, killing you in an instant.\n");
    printf("You have died, and have not saved %s.\n",dwarf);
    endGame();
}
void giveArmor(){//End 6
    sleep(s);
    printf("'Oh...sorry' you say, as you hand the cyclops his armor.\n");
    sleep(s);
    printf("The cyclops smirks for a second before lifting his club above his head, and smacking it down on your head, killing you in an instant.\n");
    printf("You have died, and have not saved %s.\n",dwarf);
    endGame();
}
void attack(){//End 7   
    sleep(s);
    printf("You swing the sword just as the cyclops gets to you, slicing his one eye, blinding him.\n");
    sleep(s);
    printf("He stops, and starts screaming.\n");
    sleep(s);
    printf("He stumbles around for a moment, before tripping over on top of %s.\n",dwarf);
    printf("You have survived, but at the cost of %'s life.\n");
    endGame();
}
void cutFree(){//End 8
    sleep(s);
    printf("You run to %s and cut him free.\n",dwarf);
    sleep(s);
    printf("In a rush, he exclaims 'Thanks %s, I got this'.\n",user);
    sleep(s);
    printf("With your new found hope in %s, you watch as he scurries up the tree like a speedy centipede.\n",dwarf);
    sleep(s);
    printf("%s has left you.\n",dwarf);
    sleep(s);
    printf("The cyclops runs up to you with a great speed, kicking you above the trees. You die on impact\nYou did not survive, but %s has escaped with his life.\n",dwarf);
    endGame();
}
void toss(){//End 9
    sleep(s);
    printf("With a feeling of inevitable defeat, you throw the sword onto the ground before you.\n");
    sleep(s);
    printf("The cyclops is now sprinting straight towards you.\n");
    sleep(s);
    printf("You close your eyes, awaiting your faight, when you hear a quiet thud followed by a much louder one.\n");
    sleep(s);
    printf("The cyclops tripped on the broad sword you left on the ground, hitting his head on a rock on the ground.\nYou live to see another day, and have saved the life of %s.\n",dwarf);
    endGame();
}
void pathOne(){//Option 1
    printf("You approach the book of %d pages and pick it up from the soft dirt.\n",page);
    sleep(s);
    printf("The cover reads 'Libro Cantus', latin for 'Book of Spells'.\n");
    sleep(s);
    printf("'Fancy book' says %s.\n",dwarf);
    sleep(s);
    printf("You flip through the pages for a couple minutes before you hear heavy footsteps behind you. \
You turn quickly to see a \nhorrific cyclops, carrying a large club, and standing at 14 feet tall. 'Do something %s!' shouts your dwarfed friend.\n",user);
    sleep(s);
    printf("In the few minutes you had to read, and your rough knowledge of latin, you barely only scrambled up three spells. \
\nDo you:\n1.Cast a 'Cor impetum' spell to stop the heart of the cyclops\n2.Cast an 'Incrementum' spell on %s to let him growth to extreme heights and fight the cyclops\
\n3.Cast a 'Pugna Scientia' spell on yourself to make yourself an expert fighter\n[Please enter '1', '2' or '3']\n",dwarf);  
    do{
        scanf("%s",&anstwo);
        if(anstwo == "1"){//End 1
            corImpetum();
        }
        if(anstwo == "2"){//End 2
            incrementum();
        }
        if(anstwo == "3"){//End 3
            pugnaScientia();
        }
        if(anstwo != "1" && anstwo != "2" && anstwo != "3"){
            notAns();
        }    
    }while(anstwo != "1" && anstwo != "2" && anstwo != "3");  
}    
void pathTwo(){//Option 2
    sleep(s);
    printf("You approach the gold armor, picking it up and brushing the dirt off its shiny golden surface.\n");
    sleep(s);
    printf("You examine the armor for a few moments, when you hear the stomps of the mighty beast.\n");
    sleep(s);
    printf("You turn to see a 14 foot cyclops towering above you, carrying an 8 foot club carved from a tree log with him.\n");
    sleep(s);
    printf("You'd expect he'd be mad, however its hard to tell because he only has only on eyebrow.\n");
    sleep(s);
    printf("'GIVE ME BACK MY ARMOR!' shouts the now clearly angry cyclops.\n");
    sleep(s);
    printf("Do you:\n1.Put on the armor\n2.Toss the armor to %s\n3.Give him the armor\n[Please enter '1', '2' or '3']\n",dwarf);
    do{
        scanf("%s",&ansthree);
        if(ansthree == "1"){//End 4
            putArmor();
        }
        if(ansthree == "2"){//End 5
            tossArmor();
        }
        if(ansthree == "3"){//End 6
            giveArmor();
        }
        if(ansthree != "1" && ansthree != "2" && ansthree != "3"){
            notAns();
        }    
    }while(ansthree != "1" && ansthree != "2" && ansthree != "3");  
}
void pathThree(){//Option 3
    sleep(s);
    printf("You approach the broad sword, picking it up and examining the blade.\n");
    sleep(s);
    printf("You practice swinging it for a few moments before hearing the running stomps of a giant behind you.\n");
    sleep(s);
    printf("You turn to see a the massive cyclops running towards you.\n");
    sleep(s);
    printf("'Do something %s!' shouts %s.\n",user,dwarf);
    sleep(s);
    printf("You look down at sword anxiously.\n");
    sleep(s);
    printf("Do you:\n1. Attack the cyclops with your new swords\n2. Cut %s free\n3. Toss the sword down in front of you\n",dwarf);
    do{
        scanf("%s",&ansfour);
        if(ansfour == "1"){//End 7
            attack();
        }
        if(ansfour == "2"){//End 8
            cutFree();
        }
        if(ansfour == "3"){//End 9
            toss();
        }
        if(ansfour != "1" && ansfour != "2" && ansfour != "3"){
            notAns();
        }    
    }while(ansfour != "1" && ansfour != "2" && ansfour != "3");  
}
void introStory(){//Introduction to the game
    printf("You wake up in a haze.\n");
    sleep(s);
    printf("Your head hurts and you look around slowly.\n");
    sleep(s);
    printf("You find that you're in a dark, wooded area. You notice next to you there is a dwarf man, tied to a tree.\n");
    sleep(s);
    printf("He notices you're awake, 'Oh, you're up' he exclaims.\n");
    sleep(s);
    printf("'Yeah...' you reply. You notice various aritifacts stuck in the dirt before you.\n");
    sleep(s);
    printf("An old book, with an apparent %d pages, a set of gold armor with %d \
inscribed markings, and a broad sword, %d feet long.\n",page,inscr,feet);//3 Random integers
    
}
void askName(){//Asks names of two characters
    printf("The man sits up straight and says in a high pitched voice: Hello there! My name is ");
    scanf("%s",&dwarf);
    printf("Whats yours?' he asks.\n");
    scanf("%s",&user);
    printf("'Well hello there %s. As you can see I'm tied up here. Some brute came through my land, carrying you, when I questioned \nhim he took me too and tied me up here. \
I've been here for bout half an hour, you'd better do something quick, that beast \nsaid he'd be back...'\n", user);
    sleep(3*s);
}
void firstOptions(){//Initial question spliting up the story
    printf("You stand up and approach the artifacts before you. \nDo you:\n1. Take the book\n2. Take the armor\n3. Take the sword\n[Please enter '1', '2' or '3']\n"); // First choice between options 1, 2, and 3
}
void body(){//splits the story up into three branches
    do{
        scanf("%s",&ansone);
        if(ansone == "1"){//Option 1
            pathOne();
        }
        if(ansone == "2"){//Option 2
            pathTwo();
        }
        if(ansone == "3"){//Option 3
            pathThree();
        }
        if(ansone != "1" && ansone != "2" && ansone != "3"){
            notAns();
        }    
    }while(ansone != "1" && ansone != "2" && ansone != "3");  
}    
void intro(){
    introStory();
    askName();
    firstOptions();
}        
int main(){
    mapOpt();
    intro();
    body();
}
