       IDENTIFICATION DIVISION.
       PROGRAM-ID. log-player.
 
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
          01 I PIC 9(2).

       LINKAGE SECTION.
       78 NUM-CARDS               VALUE 4.
       01 PLAYER-REC.
          02 PLAYER-NAME PIC X(6).      
          02 PLAYER-BID PIC 9(2).
          02 PLAYER-POINTS PIC 9(2).
          02 PLAYER-STRATEGY PIC 9(1).
          02 PLAYER-HAND PIC 9(2) OCCURS NUM-CARDS TIMES.

       PROCEDURE DIVISION USING PLAYER-REC.
          DISPLAY " "
          DISPLAY "name: " PLAYER-NAME " (" PLAYER-STRATEGY ")"
          DISPLAY "bid: " PLAYER-BID
          DISPLAY "points: " PLAYER-POINTS
            
          PERFORM LOG-HAND VARYING I FROM 1 BY 1 UNTIL I > NUM-CARDS.

          GOBACK
          .

        LOG-HAND.
          DISPLAY 'hand [' I '] = ' PLAYER-HAND (I).
