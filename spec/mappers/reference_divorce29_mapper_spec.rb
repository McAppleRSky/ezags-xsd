require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr requisitesPaperReference [RequisitesPaperReference]
  # @attr referenceDivorce29 [ActRecordToReferenceDivorce29]


describe ReferenceDivorce29Mapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
