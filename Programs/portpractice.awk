#!/bin/awk -f
#A script that quizzes you about port numbers
BEGIN 
{
    #Declare input/output files
    highscores = "portScores" 
    data = "portNumbers" 

    #Load in the testing information
    while (getline < data)
    {
        split($0, ft, ",");
        port=line[1];
        name=line[2];
        portlist[port]=name;
    }

    #Close the data file
    close(data);

    print "Port Training"
}#End of BEGIN

#Default
{
    #Generate seed for random generator based on time and day
    srand()

    #Generate the random port
    randNum = int(10*rand()+1);

    #Prompt the user for their answer
    print "What is the port for "portlist[randNum]": "
    getline answer

    #Verify answer

    #Increment score
}

END 
{
    #Print user's score

    #Save score to file

}#End of END

