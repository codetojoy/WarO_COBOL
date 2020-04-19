       IDENTIFICATION DIVISION.
       PROGRAM-ID. log-deck.
 
       DATA DIVISION.
       LOCAL-STORAGE SECTION.
          01 IDX PIC 9(2).

       LINKAGE SECTION.
       78 NUM-CARDS               VALUE 16.
       01 DECK-REC.
         02 CARDS PIC 9(2) OCCURS NUM-CARDS TIMES.

       PROCEDURE DIVISION USING DECK-REC.
          DISPLAY " "
            
          PERFORM LOG-DECK VARYING IDX FROM 1 BY 1 UNTIL IDX>NUM-CARDS.

          GOBACK
          .

        LOG-DECK.
          DISPLAY 'deck [' IDX '] = ' CARDS (IDX).
