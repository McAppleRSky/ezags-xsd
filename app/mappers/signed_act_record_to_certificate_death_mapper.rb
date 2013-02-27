# encoding: utf-8
# @note Актовая запись о смерти в объеме свидетельства c ЭП

class SignedActRecordToCertificateDeathMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateDeath'

  # Запись АГС
  # @return [ActRecordToCertificateDeathMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
