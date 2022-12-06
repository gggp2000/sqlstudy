merge into table_a A
    using (select * from table_b B)
    on ( A.id = B.id )
    when matched then
        update set A.name = B.name
    when not matched then
        insert (id,name) values (B.id,B.name);