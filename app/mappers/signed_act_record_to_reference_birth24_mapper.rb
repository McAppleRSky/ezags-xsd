# encoding: utf-8
# @note Актовая запись о рождении в объеме справки формы 24 c ЭП

class SignedActRecordToReferenceBirth24Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordToReferenceBirth24'

  # запись АГС
  # @return [ActRecordToReferenceBirth24Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
