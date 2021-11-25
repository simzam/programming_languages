
fun is_older (date1: int*int*int, date2: int*int*int) =
    if (#1 date1) < (#1 date2) then date1 else
    if (#2 date1) < (#2 date2) then date1 else
    if (#3 date1) < (#3 date2) then date1 else
    date2


fun number_in_month (month: int, dates: (int*int*int) list) =
    if null dates
    then []
    else
    if #2 (hd dates) = month
    then 1 + number_in_month(month, hd(dates)) else
    number_in_month(month, hd(dates))
