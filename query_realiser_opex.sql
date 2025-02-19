/*  R�alis� OPEX */
ALTER VIEW SETPROD.REALISE_OPEX AS
SELECT DISTINCT G.NUM_0,
	   /*SUM(G.AMTLED_0  * GD.SNS_0)*/
	   G.AMTLED_0,
	   G.ACC_0,
	   G.CCE_0,
	   G.CCE_2,
	   GD.DES_0,
	   GD.SNS_0,
	   G.ACCDAT_0,
	   GD.FIY_0,
	   GD.CURLED_0
FROM SETPROD.GACCENTRYA G
INNER JOIN SETPROD.GACCENTRYD GD
ON G.NUM_0 = GD.NUM_0
AND G.ACC_0 = GD.ACC_0
AND G.LIN_0 = GD.LIN_0
WHERE G.CCE_0 IN ('G200', 'G220')
AND G.ACC_0 LIKE '6%'
AND G.ACCDAT_0 BETWEEN '2025-01-01' AND '2025-12-31'

UNION 

SELECT DISTINCT G.NUM_0,
	   /*SUM(G.AMTLED_0  * GD.SNS_0)*/
	   G.AMTLED_0,
	   G.ACC_0,
	   G.CCE_0,
	   G.CCE_2,
	   GD.DES_0,
	   GD.SNS_0,
	   G.ACCDAT_0,
	   GD.FIY_0,
	   GD.CURLED_0
FROM SETPROD.GACCENTRYA G
INNER JOIN SETPROD.GACCENTRYD GD
ON G.NUM_0 = GD.NUM_0
AND G.ACC_0 = GD.ACC_0
AND G.LIN_0 = GD.LIN_0
WHERE G.CCE_0 IN ('E000')
AND G.ACC_0 LIKE '66%' AND G.ACC_0 NOT LIKE '681%'
AND G.ACCDAT_0 BETWEEN '2025-01-01' AND '2025-12-31';
