using { riskManagement } from '../db/schema.cds';

@path: '/service/riskManagement'
@requires: 'authenticated-user'
service riskManagementSrv {
  @odata.draft.enabled
  entity Risks as projection on riskManagement.Risks;
  @odata.draft.enabled
  entity Mitigations as projection on riskManagement.Mitigations;
}