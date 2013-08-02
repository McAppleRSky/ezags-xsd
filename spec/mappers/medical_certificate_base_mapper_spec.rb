require 'spec_helper'
require "xml_schema_mapper/test_builder"

  # @attr documentNumber [NOT_EMPTY_STRING]
  # @attr documentSeries [NOT_EMPTY_STRING]
  # @attr documentDate [date]
  # @attr documentTypeName [NOT_EMPTY_STRING]
  # @attr organizationName [NOT_EMPTY_STRING]
  # @attr organizationAddress [FullAddress]
  # @attr okpo [NOT_EMPTY_STRING]
  # @attr surname [STRING60]
  # @attr firstName [STRING60]
  # @attr patronymic [STRING60]
  # @attr fio [STRING250]
  # @attr postalAddress [FullAddress]
  # @attr licenseNumber [NOT_EMPTY_STRING]
  # @attr duplicate [boolean]
  # @attr verificationStatus [VERIFICATION_STATUS]
  # @attr medCertOfDeathType [MED_CERT_OF_DEATH_TYPE]


describe MedicalCertificateBaseMapper do

  include XmlSchemaMapper::TestBuilder::Helper

  subject { build_described_mapper }

  it "should be self-compatible xml <-> object" do
    described_class.parse(subject.to_xml).to_xml.should eql subject.to_xml
  end

end
