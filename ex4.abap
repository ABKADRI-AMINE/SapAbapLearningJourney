REPORT Z_EXERCICE.

PARAMETERS: P_CHAIN1 TYPE C LENGTH 10,
            P_CHAIN2 TYPE C LENGTH 10,
            P_SEP    TYPE C LENGTH 1.

DATA: lv_concatenation TYPE string,
      lv_text          TYPE string,
      lv_text_element  TYPE REF TO cl_gui_textedit.

START-OF-SELECTION.

  " Concaténer P_CHAIN1 et P_CHAIN2 séparé par P_SEP
  CONCATENATE P_CHAIN1 P_SEP P_CHAIN2 INTO lv_concatenation.

  " Afficher la concaténation
  WRITE: / 'Concaténation de P_CHAIN1 et P_CHAIN2 séparées par P_SEP:', lv_concatenation.

  " Créer un élément de texte T01 et concaténer P_CHAIN1 avec T01
  CONCATENATE P_CHAIN1 ' ' INTO lv_text SEPARATED BY space.
  CREATE OBJECT lv_text_element
    EXPORTING
      text = lv_text.

