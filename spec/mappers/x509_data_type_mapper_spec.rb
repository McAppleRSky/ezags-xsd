require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr X509IssuerSerial [X509IssuerSerialType]
  # @attr X509SKI [base64Binary]
  # @attr X509SubjectName [string]
  # @attr X509Certificate [base64Binary]
  # @attr X509CRL [base64Binary]


describe X509DataTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
