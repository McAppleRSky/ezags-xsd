# encoding: utf-8
# @note Актовая запись по рождению в объеме справки по форме 25 c ЭП

class SignedActRecordToReferenceBirth25Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordToReferenceBirth25'

  # Запись АГС
  # @return [ActRecordToReferenceBirth25Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
