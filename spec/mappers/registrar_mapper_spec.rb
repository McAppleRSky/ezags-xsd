require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr foreignId [RegistrarIdentity]
  # @attr fullName [STRING250]
  # @attr shortName [NOT_EMPTY_STRING]
  # @attr legalAddress [FullAddress]
  # @attr employeeCount [int]
  # @attr headOfZagsFio [STRING250]
  # @attr headOfZagsPosition [STRING500]
  # @attr oktmo [NOT_EMPTY_STRING]
  # @attr dateBegin [date]
  # @attr registrarArchUID [registrarUID]
  # @attr serviceTypes [ListOfServiceTypes]
  # @attr phoneNumber [STRING200]
  # @attr workingTime [STRING500]
  # @attr version [TIME_STAMP_VERSION]


describe RegistrarMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
