#!/bin/bash

clear
echo "Let's build a mad-lib!"
echo " "
read -p "1. Name an adjective: " ADJECTIVE1
read -p "2. Name an emotion: " EMOTION
read -p "3. Name a color: " COLOR
read -p "4. Name a clothing item: " CLOTHING
read -p "5. Name a class subject: " SUBJECT
read -p "6. Name an adjective: " ADJECTIVE2
read -p "7. Name an animal: " ANIMAL
read -p "8. Name a verb ending in -ing: " VERB
read -p "9. Name an adjective: " ADJECTIVE3


#read out madlib
echo " "
echo "Today was a $ADJECTIVE1 day. 
I woke up feelimg $EMOTION, and decided to wear my $COLOR $CLOTHING to my $SUBJECT class. 
Then a $ADJECTIVE2 $ANIMAL walked in the middle of my $SUBJECT lecture. 
Everyone started $VERB, it was such a $ADJECTIVE3 day."
echo " "
