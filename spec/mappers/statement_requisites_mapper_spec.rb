require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr registrarId [registrarUID]
  # @attr pguId [UID]
  # @attr ezagsId [UID]
  # @attr statementDate [date]
  # @attr registrationNumberInRegistar [NOT_EMPTY_STRING]
  # @attr blank [STATEMENT_BLANK_TYPE]


describe StatementRequisitesMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
