require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr wasDeadPersonEstablished [boolean]
  # @attr groupOfCausesOfDeath [GroupOfCausesOfDeath]
  # @attr isParietalDeath [boolean]
  # @attr connectionWithDead [CONNECTION_WITH_DEAD]
  # @attr birthTime [TIME]
  # @attr deathTime [TIME]
  # @attr actRecBirthReqs [OldActRecordRequisites]
  # @attr motherOfDeadChild [CitizenWithoutIdentDoc]
  # @attr amountChild [int]
  # @attr numberChild [int]
  # @attr numberChildInFamily [int]
  # @attr childWeight [int]
  # @attr motherAge [int]
  # @attr education [int]
  # @attr educationString [STRING250]
  # @attr occupation [int]
  # @attr deathPlacedAt [DEATH_PLACE]
  # @attr causeOfDeath [int]
  # @attr causeOfDeathString [STRING250]
  # @attr deathPeriodRoadAccident [DEATH_PERIOD_ROAD_ACCIDENT]
  # @attr whoRegisteredDeath [WHO_REGISTERED_DEATH]


describe StatementContentOfDeathMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
