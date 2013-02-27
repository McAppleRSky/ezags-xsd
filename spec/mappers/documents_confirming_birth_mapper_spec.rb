require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr medicalCertificateOfBirthByOrganization [MedicalCertificateOfBirthByOrganization]
  # @attr medicalCertificateOfBirthByPrivatePractitioner [MedicalCertificateOfBirthByPrivatePractitioner]
  # @attr medicalCertificateOfSurrogateMotherAgree [MedicalCertificateOfSurrogateMotherAgree]
  # @attr medicalCertificateOfPerinatalDeathByOrganization [MedicalCertificateOfDeathByOrganization]
  # @attr medicalCertificateOfPerinatalDeathByPrivatePractitioner [MedicalCertificateOfDeathByPrivatePractitioner]
  # @attr requisitesStatementOfPersonAttentedAtBirth [RequisitesStatementOfPersonAttentedAtBirth]
  # @attr courtDecisionOfBirth [CourtActDecision]
  # @attr documentAboutFindingChild [RequisitesPaperDocument]
  # @attr documentAboutRefusalChild [RequisitesPaperDocument]
  # @attr documentProofChildGenderAndAge [RequisitesPaperDocument]


describe DocumentsConfirmingBirthMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
