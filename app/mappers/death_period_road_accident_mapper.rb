# encoding: utf-8
# @note Смерть в результате ДТП - заполняется из медицинского свидетельства о смерти пункт 19 часть II (Прочие важные состояния). В случае смерти в результате ДТП, если смерть наступила на 8 - 30 сутки (медицинское свидетельство, пункт 20, код 1), указать код for_7_days, если смерть наступила в течение 7 суток (медицинское свидетельство, пункт 20, код 2 или код 1 и 2), указать код after_7_days.

class DeathPeriodRoadAccidentMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/UploadService.xsd', File.dirname(__FILE__))
  type 'DEATH_PERIOD_ROAD_ACCIDENT'


end
