'if you are going to use this code,please at lease credit me'
'The application is made using Qb64 by Kaustubh Srivastava'
CLS
PRINT "welcome to HTML-Writer Alpha version 1.0. type yes to start"
INPUT start$
IF start$ = "yes" THEN
    OPEN "new.txt" FOR OUTPUT AS #1
    CLS
    INPUT "enter name", name$
    WRITE #1, "<!doctype html><html><head><title>", name$, "</title> <meta name='viewport' content='width=device-width, initial-scale=1'>"
    INPUT "write the sorce of the icon image.", iconImg$
    WRITE #1, "<link rel = 'icon' href ='", iconImg$, "' type ='image/x-icon'>"
    INPUT "enter meta description.(this page will turn up if some searches something matching to this description)"; meta$
    WRITE #1, "<meta name='description' content='", meta$, "'></head>"
    INPUT "type 1 to set the background as a color, type 2 to set background as an image "; background
    IF background = 1 THEN
        INPUT "enter the color of the body(red,blue,green,black,white etc.(the spelling should be correct)"; bodycolor$
        WRITE #1, "<body bgcolor='", bodycolor$, "'>"
    END IF
    IF background = 2 THEN
        INPUT "enter the name and location of the image "; bodyImage$
        WRITE #1, "<body background='", bodyImage$, "'>"
    END IF
    1 CLS
    INPUT "press 1 to add a headline, press 2 to add paragraph,press 3 to add linebreak, press 4 to add line,press 5 to add image,press 6 to add link,press 7 to add custom code,press 8 to add a video,press 9 to change alignment of elements,press 10 to add audio,press 11 to finalize, press 12 to go to the other command menu "; des
    IF des = 1 THEN
        CLS
        INPUT "what should be the size of the heading (1 to 6)"; headsize
        IF headsize = 1 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h1><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h1>"
            GOTO 1
        END IF
        IF headsize = 2 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h2><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h2>"
            GOTO 1
        END IF
        IF headsize = 3 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h3><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h3>"

            GOTO 1
        END IF
        IF headsize = 4 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h4><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h4>"

            GOTO 1
        END IF
        IF headsize = 5 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h5><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h5>"

            GOTO 1
        END IF
        IF headsize = 6 THEN
            INPUT "please enter the font"; HeadFont$
            INPUT "please enter the color "; HeadColor$
            INPUT "please enter the alignment "; HeadAlign$
            WRITE #1, "<h6><", HeadAlign$, "><font face='", HeadFont$, "' color='", HeadColor$, "'>"
            INPUT "write your text here", Headtext$
            WRITE #1, Headtext$, "</font></", HeadAlign$, "></h6>"

            GOTO 1
        END IF


    END IF
END IF
IF des = 11 THEN
    CLS
    WRITE #1, "</body> </html> <!--this page was written with the help of Html Writer by Kaustubh Srivastava-->"
    PRINT "your project has been finalized"
END IF
IF des = 2 THEN
    CLS
    INPUT "enter the color of the paragraph "; paraColor$
    INPUT "enter the font of the paragraph "; paraFont$
    INPUT "enter the size of the text "; paraSize
    INPUT "enter the alignment of the paragraph"; paraAlign$
    WRITE #1, "<p><", paraAlign$, "><font face='", paraFont$, "' size='", paraSize, "' color='",paraColor$,"'>"
    INPUT "write your paragraph "; para$
    WRITE #1, para$, "</p></", paraAlign$, "></font>"
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
    INPUT "write the source of the image ", imgpath$
    INPUT "write the width of the image "; imgwidth
    INPUT "write the height of the image "; imgheight
    INPUT "write the alternate text "; imgalt$
    WRITE #1, "<img src='", imgpath$, "' width='", imgwidth, "' height='", imgheight, "' alt='", imgalt$, "'>"
    GOTO 1
END IF
IF des = 6 THEN
    CLS
    INPUT "write the link(website or file) "; hyperlink$
    INPUT "write the text"; linktext$
    INPUT "type yes if this is a download link,type no if not "; down$
    WRITE #1, "<a href='", hyperlink$, "'"
    IF down$ = "yes" THEN
        WRITE #1, " download >", linktext$, "</a>"
    ELSE
        WRITE #1, " >", linktext$, "</a>"
    END IF
    GOTO 1
END IF
IF des = 7 THEN
    CLS
    INPUT "please enter the custom code "; customCode$
    WRITE #1, customCode$
    GOTO 1
END IF
IF des = 8 THEN
    CLS
    INPUT "enter the source "; vidScr$
    INPUT "If the video is .mp4,type 1.if it is ogg,type 2"; vidtype
    INPUT "enter the width "; vidWidth
    INPUT "write the height of the image "; vidheight
    WRITE #1, "<video width='", vidWidth, "' height='", vidheight, "' controls>"
    IF vidtype = 1 THEN
        WRITE #1, "<source src='", vidScr$, "' type='", "video/mp4", "'>"
    END IF
    IF vidtype = 2 THEN
        WRITE #1, "<source src='", vidScr$, "' type='", "video/ogg", "'>"
    END IF
    WRITE #1, "your browser does not support this</video>"
    GOTO 1
END IF
IF des = 9 THEN
    CLS
    INPUT "write the alignment "; Align$
    WRITE #1, "<", Align$, ">"
    GOTO 1
END IF
IF des = 10 THEN
    CLS
    INPUT "enter the source "; audSrc$
    INPUT "If the audio is .mp3,type 1.if it is .ogg,type 2.if it is .wav,type 3"; audtype
    WRITE #1, "<audio controls>"
    IF audtype = 1 THEN
        WRITE #1, "<source src='", audSrc$, "' type='", "audio/mpeg", "'>"
    END IF
    IF audtype = 2 THEN
        WRITE #1, "<source src='", audScr$, "' type='", "audio/ogg", "'>"
    END IF
    IF audtype = 3 THEN
        WRITE #1, "<source src='", audScr$, "' type='", "audio/wav", "'>"
    END IF
    WRITE #1, "your browser does not support this</audio>"
    GOTO 1
END IF
IF des = 12 THEN
    CLS
    GOTO 2
END IF
2 INPUT "press 1 to add a table,press 2 to add a list,press 11 to finalize "; des2
IF des2 = 1 THEN
    CLS
    INPUT "specify the table border size "; tabbor
    INPUT "specify the table border color "; tabcolor$
    INPUT "write the caption "; tabcap$
    INPUT "wrtite the background color of the table(you can change color of each row indivisually later) "; tabcol$
    WRITE #1, "<table border='", tabbor, "' bordercolor='", tabcolor$, "'  bgcolor='", tabcol$, "'><caption>", tabcap$, "</caption>"
    3 INPUT "type 1 to add a row, type 2 to finish the table"; tabdes
    IF tabdes = 1 THEN
        INPUT "write the border color"; rowbor$
        INPUT "write the background color"; rowcol$
        WRITE #1, "<tr bordercolor='", rowbor$, "' bgcolor='", rowcol$, "'>"
        4 CLS
        INPUT "press 1 to add a table heading, press 2 to add a table cell,press 3 to go back "; rowdes
        IF rowdes = 1 THEN
            INPUT "enter the column span "; colspan
            INPUT "enter the row sapn "; rowspan
            INPUT "enter the data "; headdata$
            WRITE #1, "<th colspan='", colspan, "' rowspan='", rowspan, "'>", headdata$, "</th>"
            GOTO 4
        END IF
        IF rowdes = 2 THEN
            INPUT "enter the column span "; colspan
            INPUT "enter the row sapn "; rowspan
            INPUT "enter the data "; celldata$
            WRITE #1, "<td colspan='", colspan, "' rowspan='", rowspan, "'>", celldata$, "</td>"
            GOTO 4
        END IF
        IF rowdes = 3 THEN
            WRITE #1, "</tr>"
            CLS
            GOTO 3
        END IF
    END IF
    IF tabdes = 2 THEN
        WRITE #1, "</table>"
        GOTO 2
    END IF
END IF
IF des2 = 2 THEN
    CLS
    INPUT "press 1 to insert an unordered list, press 2 to insert a ordered list, press 3 to insert a definition list "; listdes
    IF listdes = 1 THEN
        INPUT "enter the type of bullet(Disc, Circle,Square)"; listtype$
        INPUT "enter the color of the items"; listcolor$
        INPUT "enter the font of the items"; listfont$
        INPUT "enter the size of the text of the items"; listsize
        WRITE #1, "<ul type='", listtype$, "'> <font face='", listfont$, "' size='", listsize, "' color='", listcolor$, "'>"
        5 INPUT "press 1 to add items to it,press 2 to finish the list "; items
        IF items = 1 THEN
            INPUT "enter the data"; itemdata$
            WRITE #1, "<li>", itemdata$, "</li>"
            GOTO 5
        END IF
        IF items = 2 THEN
            WRITE #1, "</font></ul>"
            GOTO 2
        END IF
    END IF
    IF listdes = 2 THEN
        INPUT "enter the type of number style(A,a,I,i,1)"; listtype$
        INPUT "enter the color of the items"; listcolor$
        INPUT "enter the font of the items"; listfont$
        INPUT "enter the size of the text of the items"; listsize
        WRITE #1, "<ol type='", listtype$, "'> <font face='", listfont$, "' size='", listsize, "' color='", listcolor$, "'>"
        6 INPUT "press 1 to add items to it,press 2 to finish the list "; items
        IF items = 1 THEN
            INPUT "enter the data"; itemdata$
            WRITE #1, "<li>", itemdata$, "</li>"
            GOTO 6
        END IF
        IF items = 2 THEN
            WRITE #1, "</font></ol>"
            GOTO 2
        END IF
    END IF
    IF listdes = 3 THEN
        WRITE #1, "<dl>"
        INPUT "enter the color of the headings"; HeadColor$
        INPUT "enter the font of the headings"; HeadFont$
        INPUT "enter the size of the text of the headings"; headsize
        INPUT "enter the color of the items"; datacolor$
        INPUT "enter the font of the items"; datafont$
        INPUT "enter the size of the text of the items"; datasize
        7 INPUT "type 1 to enter a heading, type 2 to enter the definition,type 3 to finish the list "; items
        IF items = 1 THEN
            INPUT "enter the data"; itemdata$
            WRITE #1, "<dt><font size='", headsize, "' face='", HeadFont$, "' color='", HeadColor$, "'>", itemdata$, "</font></dt>"
            GOTO 7
        END IF
        IF items = 2 THEN
            INPUT "enter the data"; itemdata$
            WRITE #1, "<dd><font size='", datasize, "' face='", datafont$, "' color='", datacolor$, "'>", itemdata$, "</font></dd>"
            GOTO 7
        END IF
        IF items = 3 THEN
            WRITE #1, "</dl>"
            GOTO 2
        END IF
    END IF
END IF
IF des2 = 11 THEN
    CLS
    WRITE #1, "</body> </html> <!--this page was written with the help of Html Writer by Kaustubh Srivastava-->"
    PRINT "your project has been finalized"
END IF

