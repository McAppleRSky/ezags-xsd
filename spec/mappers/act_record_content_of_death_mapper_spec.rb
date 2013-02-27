require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr groupOfCausesOfDeath [GroupOfCausesOfDeath]
  # @attr numberChildInFamily [int]
  # @attr childWeight [int]
  # @attr motherAge [int]
  # @attr education [int]
  # @attr educationString [STRING250]
  # @attr occupation [int]
  # @attr deathPlacedAt [int]
  # @attr causeOfDeath [int]
  # @attr causeOfDeathString [STRING250]
  # @attr deathPeriodRoadAccident [int]
  # @attr whoRegisteredDeath [int]


describe ActRecordContentOfDeathMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
