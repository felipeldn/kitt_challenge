def GetPrice(duration_minutes)

    price_per_minute = 2
    price_per_hour = 22
    price_per_day = 60
    price_per_week = 105

    one_day = 1440
    two_days = 2880
    one_week = 10080
    two_weeks = 20160
    number_of_weeks = duration_minutes / one_week
    result = duration_minutes * price_per_minute

    if duration_minutes.between?(1, 11)
        puts result
    elsif duration_minutes.between?(12, 60)
        puts price_per_hour
    elsif duration_minutes.between?(61, 179)
        puts price_per_hour * 2
    elsif duration_minutes.between?(180, one_day)
        puts price_per_day
    elsif duration_minutes.between?(1441, one_week)
        puts price_per_week
    elsif duration_minutes.between?(10081, two_weeks)
        puts price_per_week * 2
    elsif duration_minutes > two_weeks
        puts price_per_week * number_of_weeks
    end

end 

GetPrice(40320)