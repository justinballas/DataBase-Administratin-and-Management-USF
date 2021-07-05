create trigger dml_delete_AdminTreatment
on AdminTreatment
instead of delete
as
print 'you should never delete rows'
rollback
