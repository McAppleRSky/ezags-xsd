# encoding: utf-8
# @note Актовая запись об усыновлении (удочерении) в объеме свидетельства c ЭП

class SignedActRecordToCertificateAdoptionMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateAdoption'

  # Запись АГС
  # @return [ActRecordToCertificateAdoptionMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
