import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.util.*;

class DataParser {
    static final String INSERT_RESTAURANT_SCRIPT =
            "INSERT INTO restaurants values({0},{1});";
    static final String INSERT_OPERATING_HOURS_SCRIPT =
            "INSERT INTO operatinghours values({0},{1},''{2}'',''{3}:{4}:00'',''{5}:{6}:{7}'');";

    static final String ERROR_SPLITTING_TOKEN =
            "ERROR: first comma not between quotes";
    static final String ERROR_GET_DAY = "ERROR: day is invalid: {0}";
    static final String ERROR_DAY_RANGE =
            "ERROR: first day, {0}, is after end day, {1}";
    static final String ERROR_GET_TIME = "ERROR: time is invalid: {0}";
    static final String ERROR_GET_AMPM = "ERROR: AMPM is invalid: {0}";
    static final String ERROR_GET_NEXT_TIME =
            "ERROR: Remaining string is invalid: {0}";

    static HashMap<String, Integer> dayToIntMap =
            new HashMap<String, Integer>();
    static HashMap<Integer, String> intToDayMap =
            new HashMap<Integer, String>();
    static int operatingHoursIndex;

    public static void parseDateTime(int restaurantIndex, String input) {
        int index = 1;
        String token;
        int startDay;
        int endDay;
        int[] hours = new int[2];
        int[] minutes = new int[2];
        boolean isParsed = true;

        ArrayList<Integer> requiredDays = new ArrayList<Integer>();

        // parse the days
        while (index < input.length()) {
            token = input.substring(index, index + 3);
            if (dayToIntMap.containsKey(token.toLowerCase())) {
                startDay = dayToIntMap.get(token.toLowerCase());
                endDay = startDay;
            } else {
                System.out.println(MessageFormat.format(ERROR_GET_DAY, token));
                isParsed = false;
                break;
            }
            index += 3;

            if ('-' == input.charAt(index)) {
                index++;
                // set the end day for the range
                token = input.substring(index, index + 3);
                if (dayToIntMap.containsKey(token.toLowerCase())) {
                    endDay = dayToIntMap.get(token.toLowerCase());
                } else {
                    System.out.println(MessageFormat.format(ERROR_GET_DAY,
                            token));
                    isParsed = false;
                    break;
                }
                if (endDay < startDay) {
                    System.out.println(MessageFormat.format(ERROR_DAY_RANGE,
                            startDay, endDay));
                    isParsed = false;
                    break;
                }
                index += 3;
            }

            for (int i = startDay; i <= endDay; i++) {
                requiredDays.add(i);
            }

            if (',' == input.charAt(index)) {
                index += 2;
                // parse the next date
            } else {
                index += 1;
                // no more date to parse
                break;
            }
        }

        if (isParsed) {
            // parse the time
            for (int i = 0; i < 2; i++) {
                if (':' == input.charAt(index + 1)) {
                    hours[i] =
                            Integer.parseInt(input.substring(index, index + 1));
                    minutes[i] =
                            Integer.parseInt(input.substring(index + 2,
                                    index + 4));
                    index += 5;
                } else if (':' == input.charAt(index + 2)) {
                    hours[i] =
                            Integer.parseInt(input.substring(index, index + 2));
                    minutes[i] =
                            Integer.parseInt(input.substring(index + 3,
                                    index + 5));
                    index += 6;
                } else if (' ' == input.charAt(index + 1)) {
                    hours[i] =
                            Integer.parseInt(input.substring(index, index + 1));
                    minutes[i] = 0;
                    index += 2;
                } else if (' ' == input.charAt(index + 2)) {
                    hours[i] =
                            Integer.parseInt(input.substring(index, index + 2));
                    minutes[i] = 0;
                    index += 3;
                } else {
                    System.out.println(MessageFormat.format(ERROR_GET_TIME,
                            input));
                    isParsed = false;
                    break;
                }

                if ("am".equals(input.substring(index, index + 2).toLowerCase())) {
                    if (12 == hours[i]) {
                        hours[i] -= 12;
                    }
                } else if ("pm".equals(input.substring(index, index + 2)
                        .toLowerCase())) {
                    hours[i] += 12;
                } else {
                    System.out.println(MessageFormat.format(ERROR_GET_AMPM,
                            input));
                    isParsed = false;
                    break;
                }
                if (0 == i) {
                    index += 5;
                } else {
                    index += 4;
                }
            }
        }
        if (isParsed) {
            // Create an entry for the restaurant
            DecimalFormat formatter = new DecimalFormat("00");

            if (hours[1] < hours[0]
                    || (hours[0] == hours[1] && minutes[1] < minutes[0])) {
                // the end time is on the following day, split to 2 entries

                for (int i = 0; i < requiredDays.size(); i++) {
                    operatingHoursIndex++;
                    Object[] args1 =
                            { operatingHoursIndex, restaurantIndex,
                                    intToDayMap.get(requiredDays.get(i)),
                                    formatter.format(hours[0]),
                                    formatter.format(minutes[0]), "23", "59",
                                    "59" };
                    System.out.println(MessageFormat.format(
                            INSERT_OPERATING_HOURS_SCRIPT, args1));
                    operatingHoursIndex++;
                    Object[] args2 =
                            { operatingHoursIndex, restaurantIndex,
                                    intToDayMap.get(requiredDays.get(i) + 1),
                                    "00", "00", formatter.format(hours[1]),
                                    formatter.format(minutes[1]), "00" };
                    System.out.println(MessageFormat.format(
                            INSERT_OPERATING_HOURS_SCRIPT, args2));
                }
            } else {
                for (int i = 0; i < requiredDays.size(); i++) {
                    operatingHoursIndex++;
                    Object[] args3 =
                            { operatingHoursIndex, restaurantIndex,
                                    intToDayMap.get(requiredDays.get(i)),
                                    formatter.format(hours[0]),
                                    formatter.format(minutes[0]),
                                    formatter.format(hours[1]),
                                    formatter.format(minutes[1]), "00" };
                    System.out.println(MessageFormat.format(
                            INSERT_OPERATING_HOURS_SCRIPT, args3));
                }
            }

            if (index < input.length()) {
                if ('/' == input.charAt(index)) {
                    parseDateTime(restaurantIndex, input.substring(index + 1));
                } else {
                    System.out.println(input.substring(index));
                    System.out.println(MessageFormat.format(
                            ERROR_GET_NEXT_TIME, input));
                }
            }
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String input;
        int restaurantIndex = 0;
        int commaIndex;
        String restaurantName;
        String operatingHours;

        operatingHoursIndex = 0;

        // init map for day to its corresponding integer
        dayToIntMap.put("mon", 1);
        dayToIntMap.put("tue", 2);
        dayToIntMap.put("wed", 3);
        dayToIntMap.put("thu", 4);
        dayToIntMap.put("fri", 5);
        dayToIntMap.put("sat", 6);
        dayToIntMap.put("sun", 7);

        // init map for int to its corresponding day
        intToDayMap.put(1, "Mon");
        intToDayMap.put(2, "Tue");
        intToDayMap.put(3, "Wed");
        intToDayMap.put(4, "Thu");
        intToDayMap.put(5, "Fri");
        intToDayMap.put(6, "Sat");
        intToDayMap.put(7, "Sun");
        intToDayMap.put(8, "Mon");

        while (scanner.hasNextLine()) {
            restaurantIndex++;

            input = scanner.nextLine();

            commaIndex = input.indexOf(",");

            if (input.charAt(commaIndex - 1) != ('"')
                    || input.charAt(commaIndex + 1) != '"') {
                System.out.println(ERROR_SPLITTING_TOKEN);
            }
            restaurantName = input.substring(0, commaIndex);
            operatingHours = input.substring(commaIndex + 1);

            // Create an entry for the restaurant
            System.out.println(MessageFormat.format(INSERT_RESTAURANT_SCRIPT,
                    restaurantIndex, restaurantName.replaceAll("'", "''")
                            .replaceAll("\"", "'")));

            parseDateTime(restaurantIndex, operatingHours);
        }
        scanner.close();
    }

}