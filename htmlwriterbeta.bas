CLS
PRINT "welcom to html writer beta. type yes to start"
INPUT start$
IF start$ = "yes" THEN
    OPEN "new.txt" FOR OUTPUT AS #1
    CLS
    INPUT "enter name", name$
    WRITE #1, "<!doctype html><html><head><title>", name$, "</title></head>"
    INPUT "enter the color of the body(red,blue,green,black,white etc.(the spelling should be correct)"; bodycolor$
    WRITE #1, "<body bgcolor=(", bodycolor$, "(>"
    1 CLS
    INPUT "press 1 to add a headline, press 2 to add paragraph,press 3 to add linebreak, press 4 to add line,press 5 to add image,press 6 to add link,press 10 to finalize "; des
    IF des = 1 THEN
        CLS
        INPUT "what should be the size of the heading (1 to 6)"; headsize
        IF headsize = 1 THEN
            WRITE #1, "<h1>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h1>"
            GOTO 1
        END IF
        IF headsize = 2 THEN
            WRITE #1, "<h2>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h2>"
            GOTO 1
        END IF
        IF headsize = 3 THEN
            WRITE #1, "<h3>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h3>"
            GOTO 1
        END IF
        IF headsize = 4 THEN
            WRITE #1, "<h4>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h4>"
            GOTO 1
        END IF
        IF headsize = 5 THEN
            WRITE #1, "<h5>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h5>"
            GOTO 1
        END IF
        IF headsize = 6 THEN
            WRITE #1, "<h6>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</h6>"
            GOTO 1
        END IF


    END IF
END IF
IF des = 10 THEN
    CLS
    WRITE #1, "</body> </html> <!--this page was written with the of Html Writer by Kaustubh Srivastava-->"
    PRINT "your project has been finalized"
END IF
IF des = 2 THEN
    CLS
    WRITE #1, "<p>"
    INPUT "write your paragraph"; para$
    WRITE #1, par$, "</p>"
    GOTO 1
END IF
IF des = 3 THEN
    WRITE #1, "<br>"
    PRINT "the line break has been inserted"
    INPUT "press 1 to continue", linebreak
    IF linebreak = 1 THEN
        GOTO 1
    END IF
END IF
IF des = 4 THEN
    WRITE #1, "<hr>"
    PRINT "the line has been inserted"
    INPUT "press 1 to continue", linee
    IF linee = 1 THEN
        GOTO 1
    END IF
END IF
IF des = 5 THEN
    CLS
    INPUT "write the name and path of image(without inverted commas)", imgpath$
    INPUT "write the width of the image"; imgwidth
    INPUT "write the height of the image"; imgheight
    WRITE #1, "<img src=(", imgpath$, "( width=(", imgwidth, "( height", imgheight, ">"
    GOTO 1
END IF
IF des = 6 THEN
    CLS
    INPUT "write the link"; hyperlink$
    INPUT "write the text"; linktext$
    WRITE #1, "<a href=(", hyperlink$, "(>", linktext$, "</a>"
    goto 1
END IF
