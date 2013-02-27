# encoding: utf-8
# @note Актовая запись о заключении брака в объеме справки формы 27 c ЭП

class SignedActRecordToReferenceMarriage27Mapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'SignedActRecordToReferenceMarriage27'

  # Запись АГС
  # @return [ActRecordToReferenceMarriage27Mapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record
  # ЭП должностного лица органа ЗАГС
  # @return [SignatureWithCommentMapper]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :act_record_signature

end
