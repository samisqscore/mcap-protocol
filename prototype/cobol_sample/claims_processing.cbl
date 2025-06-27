       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLAIMS01.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CLAIM-TYPE              PIC X(10).
       01 DAMAGE-AMOUNT           PIC 9(6).
       01 POLICY-YEARS            PIC 9(2).
       01 CUSTOMER-CLAIMS-COUNT   PIC 9(2).

       PROCEDURE DIVISION.

           IF CLAIM-TYPE = 'AUTO' AND DAMAGE-AMOUNT > 25000
               IF POLICY-YEARS < 3
                   PERFORM HIGH-RISK-REVIEW
               ELSE
                   IF CUSTOMER-CLAIMS-COUNT > 2
                       PERFORM FRAUD-CHECK
                   END-IF
               END-IF
           END-IF.

           STOP RUN.
