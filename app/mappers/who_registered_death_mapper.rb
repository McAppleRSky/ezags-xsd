# encoding: utf-8
# @note Лицо, зарегистрировавшее факт смерти

class WhoRegisteredDeathMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'WHO_REGISTERED_DEATH'


end
