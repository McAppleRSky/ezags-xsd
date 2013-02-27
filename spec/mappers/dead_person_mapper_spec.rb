require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr surname [STRING60]
  # @attr firstName [STRING60]
  # @attr patronymic [STRING60]
  # @attr gender [GENDERS]
  # @attr birthDate [DateAgile]
  # @attr birthPlace [ShortAddress]
  # @attr citizenship [CITIZENSHIP]
  # @attr citizenshipString [STRING80]
  # @attr nationality [OKIN_CODE]
  # @attr nationalityString [STRING40]
  # @attr residencePlace [FullAddress]
  # @attr snils [SNILS]
  # @attr deathDate [DateAgile]
  # @attr deathPlace [ShortAddress]
  # @attr identityDocument [IdentityDocument]


describe DeadPersonMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
