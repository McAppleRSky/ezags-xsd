require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr countryCode [OKSM_CODE]
  # @attr rawAddressString [NOT_EMPTY_STRING]
  # @attr kladrCode [KLADR_CODE]
  # @attr kladeFiasCode [KLADE_FIAS_CODE]
  # @attr country [STRING80]
  # @attr region [STRING80]
  # @attr district [STRING80]
  # @attr city [STRING80]
  # @attr settlement [STRING80]


describe ShortAddressMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
