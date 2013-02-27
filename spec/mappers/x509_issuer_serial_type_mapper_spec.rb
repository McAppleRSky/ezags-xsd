require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr X509IssuerName [string]
  # @attr X509SerialNumber [integer]


describe X509IssuerSerialTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
