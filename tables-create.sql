  /* table to hold user data */
CREATE TABLE persons( PERSON_ID	     NUMBER not null , 
                      LASTNAME	VARCHAR2(255) not null, 
					  FIRSTNAME	VARCHAR2(255),
					  AGE	    NUMBER
	                  CONSTRAINT persons_pk PRIMARY KEY (PERSON_ID));
	
	
	/* table to hold DML statements logs applied in psersons table */
CREATE TABLE persons_log( trigger_reference  VARCHAR2(30) , 
                          trigger_name    VARCHAR2(30) , 
						  trigger_event   VARCHAR2(6) ,  /* possible values are 'UPDATE', 'INSERT' and 'DELETE' */
						  trigger_type    VARCHAR2(12),  /* usually 'STATEMENT' */
						  trigger_timing  VARCHAR2(6) ,   /* possible values are 'BEFORE' and 'AFTER' */
						  trigger_date  TIMESTAMP ,      /* DML time */
						  CONSTRAINT persons_log_pk PRIMARY KEY (trigger_reference));