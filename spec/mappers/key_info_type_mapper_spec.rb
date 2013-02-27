require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr KeyName [string]
  # @attr KeyValue [KeyValueType]
  # @attr RetrievalMethod [RetrievalMethodType]
  # @attr X509Data [X509DataType]
  # @attr PGPData [PGPDataType]
  # @attr SPKIData [SPKIDataType]
  # @attr MgmtData [string]


describe KeyInfoTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
