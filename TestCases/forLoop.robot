***Test Cases ***
ForLoop1
    FOR    ${i}   IN RANGE    1    10
           LOG TO CONSOLE    ${i}
    END

ForLoop2
    @{items}     create list    1   2   3   4   5
    FOR     ${i}     IN  @{items}
            Log to console  ${i}
    END

ForString
    FOR    ${i}    IN   john scott smit jimy david     #if u give space then o/p will start showing down
         Log to console    ${i}
    END

compressed version of string
    @{nameslist}    create list    john scott smit jimy david
    FOR    ${i}     IN    @{nameslist}
           Log to console    ${i}
    END


compressed version of numbers with condition
   @{items}    create list    1 2 3 4 5 6 7 8
    FOR    ${i}     IN    @{items}
           Log to console    ${i}

           exit for loop if    ${i}==5
    END