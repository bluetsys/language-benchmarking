IDENTIFICATION DIVISION.
PROGRAM-ID. sum-example.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 WS_CURRENT_DATE_DATA.
        05  WS_CURRENT_DATE.
            10  WS_CURRENT_YEAR         PIC 9(04).
            10  WS_CURRENT_MONTH        PIC 9(02).
            10  WS_CURRENT_DAY          PIC 9(02).
        05  WS_CURRENT_TIME.
            10  WS_CURRENT_HOURS        PIC 9(02).
            10  WS_CURRENT_MINUTE       PIC 9(02).
            10  WS_CURRENT_SECOND       PIC 9(02).
            10  WS_CURRENT_MILLISECONDS PIC 9(02).
    01 WS_START_DATE_DATA               PIC 9(16).
    01 WS_END_DATE_DATA                 PIC 9(16).
    01 WS_ADD                           PIC 9(16) VALUE 0.
    01 WD_INDEX                         PIC 9(16) VALUE 0.
    01 WD_TIME                          PIC 9(3)V99.
    
PROCEDURE DIVISION.

    MOVE FUNCTION CURRENT-DATE TO WS_CURRENT_DATE_DATA.
    MOVE WS_CURRENT_DATE_DATA TO WS_START_DATE_DATA.
    
    PERFORM VARYING WD_INDEX FROM 1 BY 1
        UNTIL WD_INDEX > 100000000
            ADD WD_INDEX TO WS_ADD
    END-PERFORM.
    
    MOVE FUNCTION CURRENT-DATE TO WS_CURRENT_DATE_DATA.
    MOVE WS_CURRENT_DATE_DATA TO WS_END_DATE_DATA.
    
    SUBTRACT WS_START_DATE_DATA FROM WS_END_DATE_DATA
    COMPUTE WD_TIME = WS_END_DATE_DATA / 1000.
    
    DISPLAY "==========================".
    DISPLAY "cobol".
    DISPLAY WS_ADD.
    DISPLAY WD_TIME.

STOP RUN.
