SELECT OP,
       RECURSO, 
       DATA_HORA_INI,
       DATA_HORA_FIM,
       'PRODUCAO' as MOTIVO_PARADA
       FROM pcpapproducao
          WHERE RECURSO = '601'AND        
          DATA_HORA_INI BETWEEN '01-07-2025' AND '31-07-2025'

UNION ALL

SELECT OP,      
       RECURSO,
       DATA_HORA_INI,
       DATA_HORA_FIM,
       'PARADA' AS MOTIVO_PARADA
       FROM pcpapparada
         WHERE RECURSO = '601'AND      
               DATA_HORA_INI BETWEEN '01-07-2025' AND '31-07-2025'

ORDER BY DATA_HORA_INI;
