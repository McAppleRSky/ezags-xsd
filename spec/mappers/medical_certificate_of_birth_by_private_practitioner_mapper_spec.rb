require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr documentNumber [NOT_EMPTY_STRING]
  # @attr documentSeries [NOT_EMPTY_STRING]
  # @attr documentDate [date]
  # @attr fio [STRING250]
  # @attr postalAddress [FullAddress]
  # @attr licenseNumber [NOT_EMPTY_STRING]
  # @attr duplicate [boolean]
  # @attr verificationStatus [VERIFICATION_STATUS]


describe MedicalCertificateOfBirthByPrivatePractitionerMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
