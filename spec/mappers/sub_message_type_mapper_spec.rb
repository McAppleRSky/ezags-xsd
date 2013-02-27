require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr SubRequestNumber [string]
  # @attr Status [StatusType]
  # @attr Originator [orgExternalType]
  # @attr Date [dateTime]
  # @attr RequestIdRef [idType]
  # @attr OriginRequestIdRef [idType]
  # @attr ServiceCode [string]
  # @attr CaseNumber [string]


describe SubMessageTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
