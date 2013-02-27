require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr ezagsId [UID]
  # @attr status [int]
  # @attr statusText [NOT_EMPTY_STRING]
  # @attr statusDate [date]
  # @attr resultActRecUIDs [UID]
  # @attr resultDocumentUIDs [UID]


describe ServiceStatusMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
