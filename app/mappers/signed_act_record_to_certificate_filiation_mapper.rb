# encoding: utf-8
# @note Актовая запись об установлении отцовства в объеме свидетельства c ЭП

class SignedActRecordToCertificateFiliationMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateFiliation'

  # Запись АГС
  # @return [ActRecordToCertificateFiliationMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
