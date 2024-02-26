/*Finding Art having AID=7*/
set serveroutput on
declare 
Art_id art.aid%type;
Atitle ART.title%type;
MonetaryValue number;
begin
select aid,title,MonetaryValue into Art_id,Atitle,MonetaryValue from art where aid=7;
dbms_output.put_line('Art Id: '||Art_id|| ' Art Title: '||Atitle || ' Monatary Value: '||MonetaryValue);
end;
/

/*Insert Record */
set serveroutput on
declare 
aid ART.aid%type:=11;
artist ART.ARTIST%type:='Vincent van Gogh';
atitle ART.title%type:='The Starry Night';
MonetaryValue ART .MonetaryValue%type:=8000000;
aType ART.type%type:='Painting';
YearCreated  Art.YearCreated%type:=1889;
DateProcured  ART.DateProcured%type:= date '2023-04-05';
ArtStatus ART.ArtStatus%type:='Painting';
Gallery ART.Gallery%type:='Modern';
begin
insert into Art values(aid,artist,atitle,MonetaryValue,aType,YearCreated,DateProcured,ArtStatus,Gallery);
end;
/


/*Row Type*/
set serveroutput on
declare 
artist_row ARTISTINFO%rowtype;
begin
select id,name,YearofBirth,Category into artist_row.id,artist_row.name,artist_row.YearofBirth,artist_row.CATEGORY from ARTISTINFO  where id=7;
end;
/

/*Row Count*/
set serveroutput on
declare 
cursor Artist_cursor is select * from ARTISTINFO ;
Artist_row ARTISTINFO %rowtype;
begin
open Artist_cursor;
fetch Artist_cursor into Artist_row.id,Artist_row.name,Artist_row.YearofBirth,Artist_row.Category;
while Artist_cursor%found loop
dbms_output.put_line('Artist_id: '||Artist_row.id|| ' Name: '||Artist_row.name || ' Year Of Birth ' ||Artist_row.YearofBirth|| ' Category'||Artist_row.Category);
dbms_output.put_line('Row count: '|| Artist_cursor%rowcount);
fetch Artist_cursor into Artist_row.id,Artist_row.name,Artist_row.YearofBirth,Artist_row.Category;
end loop;
close Artist_cursor;
end;
/


/*FOR LOOP/WHILE LOOP/ARRAY with extend() function*/
set serveroutput on
declare 
  counter number;
  name2 ART.TITLE%type;
  TYPE NAMEARRAY IS VARRAY(5) OF ART.TITLE%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 1..10  
  loop
    select title into name2 from ART where AID=x;
    A_NAME.EXTEND();
    A_NAME(counter):=name2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

/*Array Without Extend Function*/
set serveroutput on
DECLARE 
   counter NUMBER := 1;
   name2 ARt.title%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF Art.title%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Art 1', 'Art 2', 'Art 3', 'Art 4', 'Art 5'); 
BEGIN
   counter := 1;
   FOR x IN 1..5  
   LOOP
      SELECT title INTO name2 FROM Art WHERE aid=x;
      A_NAME(counter) := name2;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;


/* IF/ELSEIF/ELSE */

set serveroutput on
DECLARE 
   counter NUMBER := 1;
   art_name2 ART.TITLE%TYPE;
   TYPE NAMEARRAY IS VARRAY(10) OF ART.TITLE%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('ART 1', 'ART 2', 'ART 3', 'ART 4', 'ART 5','ART 6', 'ART 7', 'ART 8', 'ART 9', 'ART 10'); 
   
BEGIN
   counter := 1;
   FOR x IN 1..10  
   LOOP
      SELECT title INTO art_name2 FROM ART WHERE aid=x;
      if art_name2='The Last Supper' 
        then
        dbms_output.put_line(art_name2||' is in '||'Renesance Gallery');
      elsif art_name2='American Gothic'  
        then
        dbms_output.put_line(art_name2||' is a '||'American Gallery');
      else 
        dbms_output.put_line(art_name2||' is a '||'other Gallery');
        end if;
   END LOOP;
END;

/*Procedure*/
CREATE OR REPLACE PROCEDURE proc2(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'From procedure: ';
  SELECT title INTO var2 FROM Art WHERE aid IN (SELECT aid FROM REPAIRS  WHERE rid = var1);
  var3 := var1 + 1; 
  DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' code is ' || var1 || ' In out parameter: ' || var3);
END;
/

declare 
aid REPAIRS.AID%type:=240009;
title ART.title%type;
extra number;
begin
proc2(aid,title,extra);
end;
/

