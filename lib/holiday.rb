require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_data|
    if season == :winter
      season_data.each do |key, list|
        holiday_hash[season][key].unshift(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, season_data|
    if season == :spring
      season_data.each do |key, list|
        holiday_hash[season][key].unshift(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array;
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  total_list=[];
  holiday_hash[:winter].each do |symbol,list|
    list.each do |item|
      total_list << item
    end
  end
  total_list
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,holidays|
    tseason = season.to_s
    t_season = tseason.slice(0,1).capitalize + tseason.slice(1..-1)
    puts "#{t_season}:"
    holidays.each do |holiday,supplies|
      tholiday = holiday.to_s
      t_holiday = tholiday.slice(0,1).capitalize + tholiday.slice(1..-1)
      all_supplies=""
      supplies.each do |supply|
        t_supply = supply.slice(0,1).capitalize + supply.slice(1..-1)
        if counter == 0 
          all_supplies =" " + t_supply
        else
          all_supplies = all_supplies + ", " + t_supply
        end
      end
      puts "  #{t_holiday}: #{all_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
