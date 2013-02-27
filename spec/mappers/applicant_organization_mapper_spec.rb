require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr organizationName [NOT_EMPTY_STRING]
  # @attr legalAddress [FullAddress]
  # @attr position [NOT_EMPTY_STRING]
  # @attr postalAddress [FullAddress]
  # @attr juridicalAuthorisedRepresentative [JuridicalAuthorisedRepresentative]


describe ApplicantOrganizationMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
