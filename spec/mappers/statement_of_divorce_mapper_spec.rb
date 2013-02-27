require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr statementRequisites [StatementRequisites]
  # @attr statementContent [StatementContentOfDivorce]
  # @attr participants [ParticipantsForDivorce]
  # @attr documentsConfirmingMarriage [ActRecAndCertMarriageRequisites]
  # @attr courtVerdictOfDivorce [CourtActVerdict]
  # @attr courtDecisionOfDivorce [CourtActDecision]
  # @attr documentConfirmingBenefitForHim [RequisitesPaperDocument]
  # @attr documentConfirmingBenefitForHer [RequisitesPaperDocument]
  # @attr otherApplicants [OtherApplicantsForDivorce]


describe StatementOfDivorceMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
