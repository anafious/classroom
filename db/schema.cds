namespace riskManagement;

entity Risks {
  key ID: UUID;
  risksID: String(10) @assert.unique @mandatory;
  name: String(100);
  description: String(500);
  impact: Integer;
  criticality: Integer;
  mitigation: Association to Mitigations;
}

entity Mitigations {
  key ID: UUID;
  mitigationsID: String(10) @assert.unique @mandatory;
  counter: Integer;
  description: String(500);
  risk: Association to Risks;
}

