# encoding: utf-8
# @note Простое описание временного блока, который регистрируется для посещения в УЭО

class TimeSlotMapper
  include XmlSchemaMapper
  schema File.expand_path('../../vendor/ezags-protocols/eZAGS/public/OrderService.xsd', File.dirname(__FILE__))
  type 'TimeSlot'

  # Выбранная дата
  # @return [Date]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :selected_date
  # Выбранное время
  # @return [Time]
  # minOccurs: 1, maxOccurs: 1
  attr_accessor :selected_time

end
