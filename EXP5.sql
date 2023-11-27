--IF THEN
SET SERVEROUTPUT ON;
DECLARE
  var1 NUMBER := &enter_a_number;
  var2 NUMBER := &enter_a_number;
BEGIN
IF var1 = var2 THEN
 DBMS_OUTPUT.PUT_LINE('Number 1 is Equal to Number2');
 END IF;
 DBMS_OUTPUT.PUT_LINE('Outside If');
END;


---IF Then Else
SET SERVEROUTPUT ON;
DECLARE
 var1    NUMBER := &enter_a_number;
BEGIN
 IF MOD (var1, 2) = 0 THEN
 DBMS_OUTPUT.PUT_LINE (var1 || ' Is Even');
ELSE
 DBMS_OUTPUT.PUT_LINE (var1 ||' is odd');
END IF;
 DBMS_OUTPUT.PUT_LINE ('IF THEN ELSE Construct complete!');
END;

--IF THEN ELSIF Statement
SET SERVEROUTPUT ON;
DECLARE
  var1 NUMBER:=&enter_a_number;
BEGIN
  IF var1 > 90 THEN
    DBMS_OUTPUT.PUT_LINE('Excellent');
  ELSIF var1>80 THEN
    DBMS_OUTPUT.PUT_LINE('Very Good');
  ELSIF var1>70 THEN
    DBMS_OUTPUT.PUT_LINE('Good');
  ELSIF var1>50 THEN
    DBMS_OUTPUT. PUT_LINE('Fair');
  ELSIF var1>33 THEN
    DBMS_OUTPUT.PUT_LINE('Poor');
  ELSE
    DBMS_OUTPUT.PUT_LINE('FAIL!');
  END IF;
END;

--Basic Loop 
DECLARE   
var1 NUMBER;  
var2 NUMBER;
BEGIN   
var1:=&enter_a_number;
var2:=1;
LOOP  
DBMS_OUTPUT.PUT_LINE (var1||'*'||var2||' = '||var1*var2);  
IF (var2=10) THEN  
EXIT;  
END IF;  
var2:=var2+1;  
END LOOP;  
END;