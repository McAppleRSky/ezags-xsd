require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr birthStatus [BIRTH_STATUSES]
  # @attr isDiedInWeek [boolean]
  # @attr numberChildInBirth [int]
  # @attr numberOfBirths [int]
  # @attr numberChildInFamily [int]
  # @attr hasSurrogateMother [boolean]
  # @attr isChildFound [boolean]
  # @attr isChildRefusal [boolean]
  # @attr specifyNationalityOfFather [boolean]
  # @attr specifyNationalityOfMother [boolean]
  # @attr birthTime [TIME]
  # @attr wasFiliationEstablished [boolean]
  # @attr lonelyMotherStatementDate [date]
  # @attr findingDate [date]
  # @attr findingTime [TIME]
  # @attr findingPlace [NOT_EMPTY_STRING]
  # @attr findingCircumstances [NOT_EMPTY_STRING]
  # @attr refusalDate [date]
  # @attr childWeight [int]
  # @attr education [int]
  # @attr educationString [STRING250]
  # @attr occupation [int]
  # @attr filliationAgreeByFather [boolean]


describe StatementContentOfBirthMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
