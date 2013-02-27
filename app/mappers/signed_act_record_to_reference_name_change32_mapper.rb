# encoding: utf-8
# @note Актовая запись о перемене имени в объеме справки формы32 c ЭП

class SignedActRecordToReferenceNameChange32Mapper
  include XmlSchemaMapper
  schema 'vendor/ezags-protocols/eZAGS/public/UploadService.xsd'
  type 'SignedActRecordToReferenceNameChange32'

  # Запись АГС
  # @return [ActRecordToReferenceNameChange32Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
