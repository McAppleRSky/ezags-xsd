# encoding: utf-8

class ActRecordUidMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'ACT_RECORD_UID'


end
