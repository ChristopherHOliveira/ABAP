REPORT Z_MOTOCAS.

PARAMETERS p_id TYPE i.
PARAMETERS p_model(40) TYPE c.
PARAMETERS p_weight(3) TYPE p.
PARAMETERS p_tork(3) TYPE p.
PARAMETERS p_r_trk(2) TYPE p.
PARAMETERS p_power(3) TYPE p.
PARAMETERS p_r_pwr(2) TYPE p.

START-OF-SELECTION.

SELECT *
  FROM ZMOTOS
  INTO TABLE @DATA(lt_moto)
  WHERE ID_MOTO = @p_id.

IF  sy-subrc = 0.
  MESSAGE 'ID already exists in table'.
  EXIT.
ELSE.

ENDIF.