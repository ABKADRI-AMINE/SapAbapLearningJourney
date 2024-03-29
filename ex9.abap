REPORT Z_EXERCICE.

TYPES: BEGIN OF GS_T001,
         BUKRS TYPE T001-BUKRS,
       END OF GS_T001.

DATA: GT_T001 TYPE TABLE OF GS_T001.

SELECT-OPTIONS S_BUKRS FOR T001-BUKRS.

FORM GET_DATA.
  SELECT * FROM T001 INTO TABLE GT_T001 WHERE BUKRS IN S_BUKRS.
ENDFORM.

FORM DISPLAY_DATA.
  LOOP AT GT_T001 INTO GS_T001.
    WRITE: / GS_T001-BUKRS COLOR = 6 INVERSE ON.
  ENDLOOP.
ENDFORM.

START-OF-SELECTION.
  PERFORM GET_DATA.
  PERFORM DISPLAY_DATA.
