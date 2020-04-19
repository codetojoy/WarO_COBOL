       IDENTIFICATION DIVISION.
       PROGRAM-ID. log-kitty.
 
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
          01 I PIC 9(2).

       LINKAGE SECTION.
       78 NUM-CARDS               VALUE 4.
       01 KITTY-REC.
         02 PRIZE-CARD PIC 9(2).
         02 KITTY-CARDS PIC 9(2) OCCURS NUM-CARDS TIMES.

       PROCEDURE DIVISION USING KITTY-REC.
          DISPLAY " "
            
          PERFORM SHOW-KITTY VARYING I FROM 1 BY 1 UNTIL I>NUM-CARDS.

          GOBACK
          .

        SHOW-KITTY.
          DISPLAY 'kitty [' I '] = ' KITTY-CARDS (I).
