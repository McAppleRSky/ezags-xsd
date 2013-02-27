# encoding: utf-8
# @note Результат выполнения процедуры

class OperationResultMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'OPERATION_RESULT'


end
