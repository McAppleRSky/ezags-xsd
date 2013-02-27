# encoding: utf-8
# @note Актовая запись о перемене имени в объеме свидетельства c ЭП

class SignedActRecordToCertificateNameChangeMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateNameChange'

  # Запись АГС
  # @return [ActRecordToCertificateNameChangeMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
