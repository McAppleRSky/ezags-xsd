require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr actRecordUID [ACT_RECORD_UID]
  # @attr actRecordNumber [ACT_RECORD_NUMBER]
  # @attr actRecordDate [DateRecord]
  # @attr headOfZagsFio [STRING250]
  # @attr isSecondCopy [boolean]
  # @attr isRecovered [boolean]
  # @attr requisitesCourtDecisionActRecordRecovered [CourtActDecision]
  # @attr otherInformationAndOfficialAnnotations [OtherInformationAndOfficialAnnotations]
  # @attr requisitesCourtDecisionActRecordCancel [CourtActDecision]
  # @attr correctionDate [date]
  # @attr specialistFio [STRING250]
  # @attr version [TIME_STAMP_VERSION]
  # @attr content [ActRecordContentOfFiliation]
  # @attr participants [ActRecordParticipantsForFiliation]
  # @attr actRecAndCertBirthRequisites [ActRecAndCertBirthRequisites]
  # @attr documentsConfirmingFiliation [DocumentsConfirmingFiliation]
  # @attr otherApplicants [OtherApplicants]


describe ActRecordFiliationMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
