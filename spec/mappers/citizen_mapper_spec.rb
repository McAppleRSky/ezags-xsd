require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr isPrivateOfficeOwner [boolean]
  # @attr applicant [boolean]
  # @attr surname [STRING60]
  # @attr firstName [STRING60]
  # @attr patronymic [STRING60]
  # @attr birthDate [DateAgile]
  # @attr citizenship [CITIZENSHIP]
  # @attr citizenshipString [STRING80]
  # @attr nationality [OKIN_CODE]
  # @attr nationalityString [STRING40]


describe CitizenMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
