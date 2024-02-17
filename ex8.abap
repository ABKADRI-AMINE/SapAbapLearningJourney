REPORT exercice_solution.

PARAMETERS: p_bukrs TYPE t001-bukrs,
            p_werks TYPE t001w-werks.

AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.
    IF screen-name = 'P_BUKRS' OR screen-name = 'P_WERKS'.
      screen-input = 0.  " Bloquer la modification du paramètre
      MODIFY SCREEN.
    ENDIF.
  ENDLOOP.

INITIALIZATION.
  p_bukrs = 'FR30'.  " Remplir le paramètre avec la valeur 'FR30'
