require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr Mnemonic [string]
  # @attr Version [VersionType]


describe ServiceTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
