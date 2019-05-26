from django.db.models import Lookup

class jlengthLookup(Lookup):
    lookup_name = 'jlength'

    def as_sql(self, compiler, connection):

        lhs, lhs_params = self.process_lhs(compiler, connection)

        rhs, rhs_params = self.process_rhs(compiler, connection)

        params = lhs_params + rhs_params
        return "JSON_LENGTH(%s, %s)"%(lhs,'%s'),rhs_params[0]
