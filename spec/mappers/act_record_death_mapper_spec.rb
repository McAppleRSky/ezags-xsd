require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr actRecordUID [ACT_RECORD_UID]
  # @attr actRecordNumber [ACT_RECORD_NUMBER]
  # @attr actRecordDate [DateRecord]
  # @attr headOfZAGS [RegistrarEmployee]
  # @attr isSecondCopy [boolean]
  # @attr isRecovered [boolean]
  # @attr requisitesCourtDecisionActRecordRecovered [CourtActDecision]
  # @attr otherInformationAndOfficialAnnotations [OtherInformationAndOfficialAnnotations]
  # @attr requisitesCourtDecisionActRecordCancel [CourtActDecision]
  # @attr correctionDate [date]
  # @attr specialist [RegistrarEmployee]
  # @attr version [TIME_STAMP_VERSION]
  # @attr content [ActRecordContentOfDeath]
  # @attr participants [ParticipantsForDeath]
  # @attr documentsConfirmingDeath [DocumentsConfirmingDeath]
  # @attr otherApplicants [OtherApplicants]


describe ActRecordDeathMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
