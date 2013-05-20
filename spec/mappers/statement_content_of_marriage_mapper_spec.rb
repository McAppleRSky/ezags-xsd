require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr celebrationNeeded [boolean]
  # @attr benefitCategoryForHer [NOT_EMPTY_STRING]
  # @attr benefitCategoryForHim [NOT_EMPTY_STRING]
  # @attr newLastNameOfHusb [STRING60]
  # @attr newLastNameOfWife [STRING60]
  # @attr groomAge [int]
  # @attr brideAge [int]
  # @attr isFirstMarriageForHer [int]
  # @attr isFirstMarriageForHim [int]
  # @attr numberOfJuvenileChildren [int]
  # @attr reserveNumberUid [string]
  # @attr reserveDateTime [string]


describe StatementContentOfMarriageMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
