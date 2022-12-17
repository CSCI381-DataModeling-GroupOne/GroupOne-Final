
create or replace function deny_change_ManufacturerVehicleMakeHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_ManufacturerVehicleMakeHistory 
  before update or delete on "Audit"."ManufacturerVehicleMakeHistory" 
  for each statement 
  execute function deny_change_ManufacturerVehicleMakeHistory(); 
