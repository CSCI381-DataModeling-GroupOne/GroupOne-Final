
create or replace function deny_change_DepartmentHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_DepartmentHistory 
  before update or delete on "Audit"."DepartmentHistory" 
  for each statement 
  execute function deny_change_DepartmentHistory(); 
