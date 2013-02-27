require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr birthStatus [BIRTH_STATUSES]
  # @attr isDiedInWeek [boolean]
  # @attr numberOfBirths [int]
  # @attr numberChildInFamily [int]
  # @attr childWeight [int]
  # @attr education [int]
  # @attr educationString [STRING250]
  # @attr occupation [int]


describe ActRecordContentOfBirthMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
