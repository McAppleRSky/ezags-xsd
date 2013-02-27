require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr organizationName [NOT_EMPTY_STRING]
  # @attr actRecordUID [ACT_RECORD_UID]
  # @attr actRecordNumber [ACT_RECORD_NUMBER]
  # @attr actRecordDate [DateRecord]
  # @attr verificationStatus [VERIFICATION_STATUS]


describe OldActRecordRequisitesMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
