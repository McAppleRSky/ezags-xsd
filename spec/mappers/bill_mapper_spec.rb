require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr billId [NOT_EMPTY_STRING]
  # @attr status [PAYMENT_STATUS]
  # @attr totalAmount [double]
  # @attr amountToPay [double]
  # @attr description [NOT_EMPTY_STRING]
  # @attr billDate [date]
  # @attr validUntil [date]
  # @attr okatoCode [OKATO_CODE]
  # @attr kbk [NOT_EMPTY_STRING]
  # @attr unifiedPayerId [NOT_EMPTY_STRING]
  # @attr altPayerId [NOT_EMPTY_STRING]
  # @attr revoked [boolean]


describe BillMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
