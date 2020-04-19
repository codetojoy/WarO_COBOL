       IDENTIFICATION DIVISION.
       PROGRAM-ID. player-turn.
 
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
          01 I PIC 9(2).

       LINKAGE SECTION.
       78 NUM-CARDS               VALUE 4.
       01 PRIZE-CARD PIC 9(2).
       01 PLAYER-REC.
         02 PLAYER-NAME PIC X(6).      
         02 PLAYER-BID PIC 9(2).
         02 PLAYER-POINTS PIC 9(2).
         02 PLAYER-HAND PIC 9(2) OCCURS NUM-CARDS TIMES.

       PROCEDURE DIVISION USING PRIZE-CARD, PLAYER-REC.
          MOVE 0 TO PLAYER-BID.
          PERFORM PICK-CARD VARYING I FROM 1 BY 1 UNTIL I > NUM-CARDS.

          GOBACK
          .

       *> This is the "next-card" strategy used 
       *> in other implementations.
       *> TODO: enable other strategies 
       PICK-CARD.
         IF PLAYER-BID = 0 AND PLAYER-HAND (I) > 0
           MOVE PLAYER-HAND (I) TO PLAYER-BID
           MOVE 0 TO PLAYER-HAND (I) 
         END-IF.
