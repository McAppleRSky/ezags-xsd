require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr Sender [orgExternalType]
  # @attr Recipient [orgExternalType]
  # @attr Originator [orgExternalType]
  # @attr ServiceName [string]
  # @attr TypeCode [TypeCodeType]
  # @attr Status [StatusType]
  # @attr Date [dateTime]
  # @attr ExchangeType [string]
  # @attr RequestIdRef [idType]
  # @attr OriginRequestIdRef [idType]
  # @attr ServiceCode [string]
  # @attr CaseNumber [string]
  # @attr SubMessages [SubMessagesType]
  # @attr TestMsg [string]


describe MessageTypeMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
