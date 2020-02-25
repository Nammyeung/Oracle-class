SET SERVEROUTPUT ON
DECLARE
	VEMP EMP%ROWTYPE;
	ANNSAL NUMBER(7,2);
BEGIN
	-- SCOTT ����� ��ü ������ �ο� ������ ���� VEMP�� �����Ѵ�.
	SELECT * INTO VEMP
		FROM EMP
		WHERE ENAME='SCOTT';
	IF (VEMP.COMM IS NULL) THEN -- Ŀ�̼��� NULL �̸�
		ANNSAL := VEMP.SAL*12; -- �޿��� 12�� ���Ѵ�.
	ELSE -- Ŀ�̼��� NULL�� �ƴϸ�
		ANNSAL := VEMP.SAL*12+VEMP.COMM;-- �޿��� 12�� ���� �� Ŀ�̼ǰ� �ջ�
	END IF;
	DBMS_OUTPUT.PUT_LINE('��� / �̸� / ����');
	DBMS_OUTPUT.PUT_LINE('-------------------------------------');
	DBMS_OUTPUT.PUT_LINE(VEMP.EMPNO||'/'||VEMP.ENAME||'/'||ANNSAL);
END;
/