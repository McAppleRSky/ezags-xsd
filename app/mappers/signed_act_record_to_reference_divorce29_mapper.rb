# encoding: utf-8
# @note Актовая запись о расторжении брака в объеме справки формы 29 c ЭП

class SignedActRecordToReferenceDivorce29Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToReferenceDivorce29'

  # Запись АГС
  # @return [ActRecordToReferenceDivorce29Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
