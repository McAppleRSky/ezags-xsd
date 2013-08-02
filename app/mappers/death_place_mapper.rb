# encoding: utf-8
# @note Место смерти (для Россстата)

class DeathPlaceMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DEATH_PLACE'


end
