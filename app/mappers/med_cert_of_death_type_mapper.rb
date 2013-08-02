# encoding: utf-8
# @note Вид отметки на медицинском свидетельстве

class MedCertOfDeathTypeMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'MED_CERT_OF_DEATH_TYPE'


end
