-- PowerDNS recursor: Filter AAAA records
-- Copyright (c) 2013 SATOH Fumiyasu @ OSS Technology Corp., Japan
--               https://GitHub.com/fumiyas/
--               https://twitter.com/satoh_fumiyasu
--
-- License GPLv3+: GNU GPL version 3 or later
--
-- PowerDNS recursor 3.4+ is required

function postresolve(remoteip, domain, qtype, records, rcode)
  if domain == "flets-v6.jp." then
    return rcode, records
  end

  local records_new = {}
  local i

  -- Filter AAAA records
  for i, record in ipairs(records) do
    if record.qtype ~= pdns.AAAA then
      records_new[#records_new + 1] = record
    end
  end

  -- Shuffle records
  -- setvariable()

  return rcode, records_new
end
