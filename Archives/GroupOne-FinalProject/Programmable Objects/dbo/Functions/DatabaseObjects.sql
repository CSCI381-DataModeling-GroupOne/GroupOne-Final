IF OBJECT_ID('[dbo].[DatabaseObjects]') IS NOT NULL
	DROP FUNCTION [dbo].[DatabaseObjects];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[DatabaseObjects] (@ListOfObjectIDs varchar(max) )  
  RETURNS TABLE
 
  
as RETURN
(
    select object_id
         , schema_name(schema_id) + '.' + coalesce(object_name(parent_object_id) + '.', '') + name as name
    from sys.objects as ob
        inner join openjson(N'[' + @ListOfObjectIDs + N']')
            on convert(int, Value) = ob.object_id
);




GO
