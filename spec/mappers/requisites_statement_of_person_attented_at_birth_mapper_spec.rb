require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr statementDate [date]
  # @attr personAttentedAtBirth [ApplicantPerson]
  # @attr organizationName [NOT_EMPTY_STRING]
  # @attr organizationAddress [FullAddress]
  # @attr authDate [date]
  # @attr proceedMethod [NOT_EMPTY_STRING]


describe RequisitesStatementOfPersonAttentedAtBirthMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
