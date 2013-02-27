require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr regionCode [REGION_CODE]
  # @attr regionZagsID [REGION_REGISTRAR_ID]
  # @attr fullName [STRING250]
  # @attr shortName [NOT_EMPTY_STRING]
  # @attr rawAddressString [NOT_EMPTY_STRING]
  # @attr oktmo [NOT_EMPTY_STRING]
  # @attr dateBegin [date]
  # @attr dateClose [date]


describe NsiRegistrarMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
