require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr divorceTime [TIME]
  # @attr divorceDate [DateAgile]
  # @attr benefitCategoryForHer [NOT_EMPTY_STRING]
  # @attr benefitCategoryForHim [NOT_EMPTY_STRING]
  # @attr hasCommonChildrenUnderAge [boolean]
  # @attr newLastNameOfHusb [STRING60]
  # @attr newLastNameOfWife [STRING60]
  # @attr missingPersonAssetsManager [MissingPersonAssetsManager]
  # @attr numberOfJuvenileChildren [int]
  # @attr reserveNumberUid [string]
  # @attr reserveDateTime [string]


describe StatementContentOfDivorceMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
