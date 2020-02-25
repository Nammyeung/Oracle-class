SET SERVEROUTPUT ON
DECLARE
	-- ���ڵ� Ÿ���� ����
	TYPE emp_record_type IS RECORD (
		v_empno emp.empno%TYPE,
		v_ename emp.ename%TYPE,
		v_job emp.job%TYPE,
		v_deptno emp.deptno%TYPE);

	-- ���ڵ�� ���� ����
	emp_record emp_record_type;
BEGIN
	-- SCOTT ����� ������ ���ڵ� ������ ����
	SELECT empno,ename, job, deptno
	INTO emp_record
	FROM emp
	WHERE ename = UPPER('SCOTT');
	-- ���ڵ� ������ ����� ��� ������ ���
	DBMS_OUTPUT.PUT_LINE('�����ȣ : ' || TO_CHAR(emp_record.v_empno));
	DBMS_OUTPUT.PUT_LINE('�� ��: ' || emp_record.v_ename);
	DBMS_OUTPUT.PUT_LINE('������ : ' || emp_record.v_job);
	DBMS_OUTPUT.PUT_LINE('�μ���ȣ : ' || TO_CHAR(emp_record.v_deptno));
END;
/