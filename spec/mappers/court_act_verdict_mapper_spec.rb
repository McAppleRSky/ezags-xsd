require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr courtName [NOT_EMPTY_STRING]
  # @attr documentNumber [NOT_EMPTY_STRING]
  # @attr documentDate [date]
  # @attr verificationStatus [VERIFICATION_STATUS]
  # @attr courtPlace [NOT_EMPTY_STRING]
  # @attr period [decimal]


describe CourtActVerdictMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
