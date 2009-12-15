-- created by Oraschemadoc Mon Aug 31 10:54:41 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "MIM1"."LOOKUP_ARCH_TYPE" (label_in in varchar2)
return number
deterministic
is
	arch_type_id number;
begin
	select id into arch_type_id from rhnArchType where label = label_in;
	return arch_type_id;
exception
	when no_data_found then
		rhn_exception.raise_exception('arch_type_not_found');
end;
 
/
