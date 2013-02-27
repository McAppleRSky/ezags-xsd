require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr documentUID [UID]
  # @attr documentNumber [NOT_EMPTY_STRING]
  # @attr documentDate [date]
  # @attr headOfZAGS [RegistrarEmployee]
  # @attr certSeries [STRING10]
  # @attr certStatus [CERTIFICATE_STATUS]


describe RequisitesPaperCertificateMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
