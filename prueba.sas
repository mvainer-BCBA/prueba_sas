data work.rel_segmento_cliente;
  length segmento_cliente $8 desc_segmento_cliente $80;
  input id_segmento_cliente segmento_cliente $ desc_segmento_cliente & $80.;
  datalines;
1 J       Jubilado
2 A       Acredita Haberes
3 CF      Cliente Fiel 12
4 CF_7_11 Cliente Fiel 7-11
5 CF_3_6  Cliente Fiel 3-6
6 MA      Mercado Abierto
7 EMP     Empleado
;
run;

data work.rel_intervalo_acreditacion;
  length intervalo_acreditacion $30;
  infile datalines dsd dlm='|' truncover;
  input 
    id_intervalo_acreditacion
    intervalo_acreditacion :$30.
    orden
  ;
  datalines;
1|HASTA 1 SMVM|1
2|1-2 SMVM|2
3|2-4 SMVM|3
4|4-10 SMVM|4
5|MAYOR 10 SMVM|5
-1|NO ACREDITA|-1
;
run;

data work.rel_riesgo_segmento;
  length riesgo_segmento $8 ;
  input id_riesgo_segmento riesgo_segmento $ ;
  datalines;
1 ALTO
2 MEDIO
3 BAJO
-1 NI
;
run;

