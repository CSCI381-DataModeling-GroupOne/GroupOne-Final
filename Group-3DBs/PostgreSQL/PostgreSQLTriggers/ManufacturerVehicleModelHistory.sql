
create or replace function deny_change_ManufacturerVehicleModelHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_ManufacturerVehicleModelHistory 
  before update or delete on "Audit"."ManufacturerVehicleModelHistory" 
  for each statement 
  execute function deny_change_ManufacturerVehicleModelHistory(); 
