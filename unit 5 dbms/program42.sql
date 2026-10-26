--definition 2
create or replace trigger def2
before INSERT on emp_sal
for each row
begin
	if :NEW.salary > 50000 then
	Raise_application_error(-20010,'You cant enter salary above 50000');
	end if;
end def2;
/