# encoding: utf-8
# @note Актовая запись о расторжении брака в объеме свидетельства c ЭП

class SignedActRecordToCertificateDivorceMapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToCertificateDivorce'

  # Запись АГС
  # @return [ActRecordToCertificateDivorceMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
