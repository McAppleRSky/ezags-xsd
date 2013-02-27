require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr documentType [int]
  # @attr documentSeries [NOT_EMPTY_STRING]
  # @attr documentNumber [NOT_EMPTY_STRING]
  # @attr organizationName [NOT_EMPTY_STRING]
  # @attr documentDate [date]
  # @attr divisionCode [NOT_EMPTY_STRING]
  # @attr verificationStatus [VERIFICATION_STATUS]


describe IdentityDocumentMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
