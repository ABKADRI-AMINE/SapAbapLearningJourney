REPORT.

* Boucle DO / ENDDO pour afficher les index de 5 à 10
DO 10 TIMES.
  IF SY-INDEX < 5.
    CONTINUE.
  ENDIF.
  WRITE: / SY-INDEX.
  IF SY-INDEX >= 10.
    EXIT.
  ENDIF.
ENDDO.

* Compte à rebours de 5 à 0 avec WHILE / ENDWHILE
DATA: lv_counter TYPE I VALUE 5.

WHILE lv_counter >= 0.
  WRITE: / lv_counter.
  lv_counter = lv_counter - 1.
ENDWHILE.
