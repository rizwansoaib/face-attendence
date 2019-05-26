from django.db.models import Lookup

class jcontainsLookup(Lookup):
    lookup_name = 'jcontains'

    def as_sql(self, compiler, connection):

        lhs, lhs_params = self.process_lhs(compiler, connection)

        rhs, rhs_params = self.process_rhs(compiler, connection)

        params = lhs_params + rhs_params
        return "JSON_CONTAINS(%s, %s)"%(lhs,'%s'),rhs_params[0]
