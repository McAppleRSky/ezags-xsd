# encoding: utf-8
# @note Актовая запись о рождении в объеме свидетельства c ЭП

class SignedActRecordToCertificateBirthMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateBirth'

  # Запись АГС
  # @return [ActRecordToCertificateBirthMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
