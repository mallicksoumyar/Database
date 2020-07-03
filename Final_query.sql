  SELECT   a.pers_id AS "id_person",
           TO_CHAR (TO_DATE (c.trans_dt), 'MM.YYYY') AS "month",
           SUM (c.trans_amt) AS "sum_of_transactions"
    FROM         customers a
              INNER JOIN
                 accounts b
              ON (a.pers_id = b.pers_id)
           INNER JOIN
              transactions c
           ON (b.acct_id = c.acct_id)
   WHERE   a.pers_id IN (1234, 345)
           AND TO_DATE (c.trans_dt) BETWEEN TO_DATE ('02/15/2020',
                                                     'MM/DD/YYYY')
                                        AND  TO_DATE ('06/06/2020',
                                                      'MM/DD/YYYY')
GROUP BY   a.pers_id, TO_CHAR (TO_DATE (c.trans_dt), 'MM.YYYY')
ORDER BY   a.pers_id, TO_CHAR (TO_DATE (c.trans_dt), 'MM.YYYY')