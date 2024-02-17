REPORT Z_EXERCICE.

PARAMETERS: P_VAL1 TYPE I,
            P_VAL2 TYPE I.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-001.
PARAMETERS: R_SUM RADIOBUTTON GROUP rg DEFAULT 'X',
            R_SUB RADIOBUTTON GROUP rg,
            R_MULT RADIOBUTTON GROUP rg,
            R_DIV RADIOBUTTON GROUP rg.
SELECTION-SCREEN END OF BLOCK b1.

DATA: result TYPE I.

START-OF-SELECTION.

IF R_SUM = 'X'.
  result = P_VAL1 + P_VAL2.
  WRITE: / 'Addition:', result.
ELSEIF R_SUB = 'X'.
  result = P_VAL1 - P_VAL2.
  WRITE: / 'Soustraction:', result.
ELSEIF R_MULT = 'X'.
  result = P_VAL1 * P_VAL2.
  WRITE: / 'Multiplication:', result.
ELSEIF R_DIV = 'X'.
  IF P_VAL2 <> 0.
    result = P_VAL1 / P_VAL2.
    WRITE: / 'Division:', result.
  ELSE.
    WRITE: / 'Division par zéro impossible.'.
  ENDIF.
ENDIF.
