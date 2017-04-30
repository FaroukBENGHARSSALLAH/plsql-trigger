
    /* insert trigger, this will insert a row in persons_log table  */
CREATE OR REPLACE TRIGGER persons_insert_trigger BEFORE INSERT ON persons
        DECLARE

			  /* Declare local trigger-scope variables. */
			  lv_trigger_reference  VARCHAR2(30) := 'INS-' || dbms_random.string('X', 8) || '-BR';
			  lv_trigger_name   VARCHAR2(30) := 'PERSONS_TRIGGER_T1';
			  lv_trigger_event  VARCHAR2(6) := 'INSERT';
			  lv_trigger_type   VARCHAR2(12) := 'STATEMENT';
			  lv_trigger_timing VARCHAR2(6) := 'BEFORE';

   BEGIN

     /* Log event into the persons_log table. */

     INSERT INTO persons_log( trigger_reference, trigger_name,    trigger_event,    trigger_type,    trigger_timing,    trigger_date )
                      VALUES( lv_trigger_reference, lv_trigger_name, lv_trigger_event, lv_trigger_type, lv_trigger_timing, LOCALTIMESTAMP );

   END persons_insert_trigger;
   
   
   
   
    /* update trigger, this will insert a row in persons_log table  */
CREATE OR REPLACE TRIGGER persons_update_trigger BEFORE UPDATE ON persons
        DECLARE

			  /* Declare local trigger-scope variables. */
			  lv_trigger_reference     VARCHAR2(30) := 'UPD-' || dbms_random.string('X', 8) || '-BR';
			  lv_trigger_name   VARCHAR2(30) := 'PERSONS_TRIGGER_T2';
			  lv_trigger_event  VARCHAR2(6) := 'UPDATE';
			  lv_trigger_type   VARCHAR2(12) := 'STATEMENT';
			  lv_trigger_timing VARCHAR2(6) := 'BEFORE';

   BEGIN

     /* Log event into the persons_log table. */

     INSERT INTO persons_log( trigger_reference, trigger_name,    trigger_event,    trigger_type,    trigger_timing,    trigger_date )
                      VALUES( lv_trigger_reference, lv_trigger_name, lv_trigger_event, lv_trigger_type, lv_trigger_timing, LOCALTIMESTAMP );

   END persons_update_trigger;
   
   
   
   
     /* delete trigger, this will insert a row in persons_log table  */
CREATE OR REPLACE TRIGGER persons_delete_trigger BEFORE DELETE ON persons
        DECLARE

			  /* Declare local trigger-scope variables. */
              lv_trigger_reference     VARCHAR2(30) := 'DEL-' || dbms_random.string('X', 8) || '-BR';
			  lv_trigger_name   VARCHAR2(30) := 'PERSONS_TRIGGER_T3';
			  lv_trigger_event  VARCHAR2(6) := 'DELETE';
			  lv_trigger_type   VARCHAR2(12) := 'STATEMENT';
			  lv_trigger_timing VARCHAR2(6) := 'BEFORE';

   BEGIN

     /* Log event into the persons_log table. */

     INSERT INTO persons_log( trigger_reference, trigger_name,    trigger_event,    trigger_type,    trigger_timing,    trigger_date )
                      VALUES( lv_trigger_reference, lv_trigger_name, lv_trigger_event, lv_trigger_type, lv_trigger_timing, LOCALTIMESTAMP );
		
     END persons_delete_trigger;		
