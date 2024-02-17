REPORT exercice_solution.

DATA: BEGIN OF gs_stock,
        article TYPE string,
        division TYPE string,
        quantite TYPE i,
        unite TYPE string,
      END OF gs_stock.

DATA: gt_stock TYPE TABLE OF gs_stock.

* Remplir la structure GS_STOCK avec l'article 'TG12'
gs_stock-article = 'TG12'.
gs_stock-division = 'FR10'.
gs_stock-quantite = 10.
gs_stock-unite = 'ST'.
APPEND gs_stock TO gt_stock.

* Remplir la structure GS_STOCK avec l'article 'TG13'
CLEAR gs_stock.
gs_stock-article = 'TG13'.
gs_stock-division = 'FR20'.
gs_stock-quantite = 30.
gs_stock-unite = 'ST'.
APPEND gs_stock TO gt_stock.

* Boucler sur la table pour afficher les 2 entrées à l'écran
LOOP AT gt_stock INTO gs_stock.
  WRITE: / gs_stock-article, gs_stock-division, gs_stock-quantite, gs_stock-unite.
ENDLOOP.

* Lire l'entrée correspondant à l'article 'TG12' et l'afficher à l'écran
READ TABLE gt_stock INTO gs_stock WITH KEY article = 'TG12'.
IF sy-subrc = 0.
  WRITE: / gs_stock-article, gs_stock-division, gs_stock-quantite, gs_stock-unite.
ENDIF.

* Boucler sur la table pour n'afficher que l'entrée correspondant à l'article 'TG13' à l'écran
LOOP AT gt_stock INTO gs_stock WHERE article = 'TG13'.
  WRITE: / gs_stock-article, gs_stock-division, gs_stock-quantite, gs_stock-unite.
ENDLOOP.
