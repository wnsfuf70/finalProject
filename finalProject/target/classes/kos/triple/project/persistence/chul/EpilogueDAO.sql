DESC TRIP_LOCATION_INFO;

ALTER TABLE TRIP_LOCATION_INFO
MODIFY (DETAIL_INFO VARCHAR2(1500));

DESC TRIP_LOCATION_INFO;

SELECT * FROM TRIP_LOCATION_INFO;

ALTER TABLE TRIP_LOCATION_INFO
MODIFY (DETAIL_INFO VARCHAR2(2000),
        OPEN_TIME VARCHAR2(30),
        CLOSE_TIME VARCHAR2(30)
        );
        
SELECT * FROM TAB;

DESC MEMBER;

CREATE TABLE epilogue(
  epilogueNo        NUMBER(9),
  title             VARCHAR2(60),
  type              CHAR, -- 'Y' OR 'N'
  kind              VARCHAR2(20),
  content           VARCHAR2(300),
  totalcount        NUMBER(9),
  security          CHAR, -- 'Y' OR 'N'
  goodcount         NUMBER(9),
  mem_id            VARCHAR2(30),
  reg_date			TIMESTAMP DEFAULT SYSDATE,
  CONSTRAINT epilogue_epilogueNo_pk PRIMARY KEY(epilogueNo),
  CONSTRAINT epilouge_mem_id_fk     FOREIGN KEY(mem_id) REFERENCES member(mem_id)
  );
  
CREATE TABLE epilogue_Like(
  epilogue_LikeNo       NUMBER(9),
  mem_id                VARCHAR2(30),
  epilogueNo            NUMBER(9),
  CONSTRAINT epilogue_LikeNo_pk   PRIMARY KEY(epilogue_LikeNo),
  CONSTRAINT epilogue_Like_mem_id_fk  FOREIGN KEY(mem_id) REFERENCES member(mem_id),
  CONSTRAINT epilogue_Like_epilogueNo_fk FOREIGN KEY(epilogueNo) REFERENCES epilogue(epilogueNo)
  );
  
CREATE TABLE locker(
  lockerNo                NUMBER(9),
  epilogueNo              NUMBER(9),
  mem_id                  VARCHAR2(30),
  CONSTRAINT lockerNo_pk  PRIMARY KEY(lockerNo),
  CONSTRAINT locker_epilogueNo_fk FOREIGN KEY(epilogueNo) REFERENCES epilogue(epilogueNo)
  );
  

  
CREATE TABLE epilogue_comment(
  epilogue_commentNo    NUMBER(9),
  content               VARCHAR2(300),
  regdate               TIMESTAMP DEFAULT sysdate,
  mem_id                VARCHAR2(30),
  epilogueNo            NUMBER(9),
  CONSTRAINT            ec_epilogue_commentNo_pk        PRIMARY KEY(epilogue_commentNo),
  CONSTRAINT            ec_mem_id_fk                    FOREIGN KEY(mem_id) REFERENCES member(mem_id),
  CONSTRAINT            ec_epilogueNo_fk                FOREIGN KEY(epilogueNo)   REFERENCES epilogue(epilogueNo)
  );
  
CREATE TABLE epilogue_course(
  epilogue_courseNo           NUMBER(9),
  location_num                VARCHAR2(50),
  content                     VARCHAR2(200),
  img1                        VARCHAR2(300),
  img2                        VARCHAR2(300),
  img3                        VARCHAR2(300),
  img4                        VARCHAR2(300),
  visit_order                 NUMBER(9),
  dday                        TIMESTAMP DEFAULT sysdate,
  epilogueNo                  NUMBER(9),
  CONSTRAINT ep_course_epilogue_courseNo_pk    PRIMARY KEY(epilogue_courseNo),
  CONSTRAINT ep_course_location_num_fk      FOREIGN KEY(location_num)   REFERENCES trip_location_info(location_num),
  CONSTRAINT ep_course_epilogueNo_fk      FOREIGN KEY(epilogueNo)       REFERENCES epilogue(epilogueNo)
  );
  
  desc epilogue;

	CREATE SEQUENCE EPILOGUE_SEQ
	START WITH 1
	INCREMENT BY 1
	MAXVALUE 999999;
	
	CREATE SEQUENCE epilogue_course_seq
	START WITH 1
	INCREMENT BY 1
	MAXVALUE 999999;
	
	CREATE SEQUENCE epilogue_comment_seq
	START WITH 1
	INCREMENT BY 1
	MAXVALUE 999999;
	
	CREATE SEQUENCE locker_seq
	START WITH 1
	INCREMENT BY 1
	MAXVALUE 999999;
	
	CREATE SEQUENCE epilogue_like
	START WITH 1
	INCREMENT BY 1
	MAXVALUE 999999;