require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr a [CauseOfDeath]
  # @attr b [CauseOfDeath]
  # @attr c [CauseOfDeath]
  # @attr d [CauseOfDeath]
  # @attr e [CauseOfDeath]
  # @attr ii [CauseOfDeath]
  # @attr otherDeathReason [CauseOfDeath]


describe GroupOfCausesOfDeathMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
