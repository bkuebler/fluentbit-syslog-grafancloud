function parse_priority(tag, timestamp, record)
    local priority = tonumber(record["pri"]);

    local facility = math.floor(priority / 8)
    local severity = priority % 8

    local levelValues =
    {
	    [0] = "emerg",
	    [1] = "alert",
	    [2] = "critical",
	    [3] = "error",
	    [4] = "warning",
	    [5] = "notice",
	    [6] = "info",
	    [7] = "debug"
    }

    local facilityValues =
    {
	    [0] = "kern",
	    [1] = "user",
	    [2] = "mail",
	    [3] = "daemon",
	    [4] = "auth",
	    [5] = "syslog",
	    [6] = "lpr",
	    [7] = "news",
	    [8] = "uucp",
	    [9] = "cron",
	    [10] = "authpriv",
	    [11] = "ftp",
	    [12] = "ntp",
	    [13] = "security",
	    [14] = "console",
	    [15] = "solaris-cron",
	    [16] = "local0",
	    [17] = "local1",
	    [18] = "local2",
	    [19] = "local3",
	    [20] = "local4",
	    [21] = "local5",
	    [22] = "local6",
	    [23] = "local7"
    }

    record["severity"]= levelValues[severity]
    record["facility"]= facilityValues[facility]

    return 2, timestamp, record
end
