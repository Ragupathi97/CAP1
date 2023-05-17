using{
    CatalogService as admin
} from './service';

annotate admin.Employee with @(odata.draft.enabled : true);
//annotate admin.Skill with @(odata.draft.enabled : true);

