class Event
  include Mongoid::Document
  include Mongoid::MultiParameterAttributes
  include Mongoid::VirtualMultiParameterAttributes

  virtual_date_multi_parameter :starts_at_date
  virtual_time_multi_parameter :starts_at_time
  virtual_date_time_multi_parameter :starts_at_datetime

  field :multiparameter, :type => Time

  # Time example
  def starts_at_time
    @starts_at_time
  end
  def starts_at_time=(a_time)
    @starts_at_time = a_time
  end

  # Date example
  def starts_at_date
    @starts_at_date
  end
  def starts_at_date_as_real_date
    Date.parse(Time.now.strftime('%Y/%m/%d'))
  end
  def starts_at_date=(a_date)
    @starts_at_date = a_date.to_date
  end
end
