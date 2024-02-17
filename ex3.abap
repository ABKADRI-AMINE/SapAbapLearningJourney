REPORT Z_EXERCICE.

PARAMETERS: P_CHAIN1 TYPE C LENGTH 20,
            P_VAL1   TYPE I,
            P_VAL2   TYPE I.

START-OF-SELECTION.

  DATA: lv_substring TYPE string,
        lv_length    TYPE i.

  " Déterminer la longueur de la chaîne P_CHAIN1
  lv_length = STRLEN( P_CHAIN1 ).

  " Déterminer la sous-chaîne de caractères de P_CHAIN1 en fonction d'un offset P_VAL1 et d'une longueur P_VAL2
  lv_substring = P_CHAIN1+P_VAL1-1(P_VAL2).

  " Afficher les valeurs
  WRITE: / 'Longueur de la chaîne P_CHAIN1:', lv_length,
         / 'Sous-chaîne de caractères:', lv_substring.
