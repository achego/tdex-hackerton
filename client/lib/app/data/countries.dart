const kAllCurrencies = {
  "USD": {
    "symbol": "\$",
    "name": "US Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "USD",
    "name_plural": "US dollars",
    "emoji": "🇺🇸",
    "unicode": "U+1F1FA U+1F1F8",
    "image": "https://www.worldometers.info/img/flags/small/tn_us-flag.gif",
    "isoAlpha2": "US",
    "isoAlpha3": "USA",
    "isoNumeric": 840,
    "currency": {"code": "USD", "name": "Dollar", "symbol": "\$"},
  },
  "CAD": {
    "symbol": "CA\$",
    "name": "Canadian Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "CAD",
    "name_plural": "Canadian dollars"
  },
  "EUR": {
    "symbol": "€",
    "name": "Euro",
    "symbol_native": "€",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "EUR",
    "name_plural": "euros",
    "emoji": "🇪🇺",
    "unicode": "U+1F1EA U+1F1FA",
    "image":
        "https://media.istockphoto.com/id/1348120505/vector/europe-flag.jpg?s=612x612&w=0&k=20&c=FXqA9VILDpvLPHh0g9Rv6ntd7YoSdth95WSgmpVuaSw=",
    "isoAlpha2": "PT",
    "isoAlpha3": "PRT",
    "isoNumeric": 620,
    "currency": {"code": "EUR", "name": "Euro", "symbol": "€"},
  },
  "AED": {
    "symbol": "AED",
    "name": "United Arab Emirates Dirham",
    "symbol_native": "د.إ.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "AED",
    "name_plural": "UAE dirhams"
  },
  "AFN": {
    "symbol": "Af",
    "name": "Afghan Afghani",
    "symbol_native": "؋",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "AFN",
    "name_plural": "Afghan Afghanis"
  },
  "ALL": {
    "symbol": "ALL",
    "name": "Albanian Lek",
    "symbol_native": "Lek",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "ALL",
    "name_plural": "Albanian lekë"
  },
  "AMD": {
    "symbol": "AMD",
    "name": "Armenian Dram",
    "symbol_native": "դր.",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "AMD",
    "name_plural": "Armenian drams"
  },
  "ARS": {
    "symbol": "AR\$",
    "name": "Argentine Peso",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "ARS",
    "name_plural": "Argentine pesos"
  },
  "AUD": {
    "symbol": "AU\$",
    "name": "Australian Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "AUD",
    "name_plural": "Australian dollars"
  },
  "AZN": {
    "symbol": "man.",
    "name": "Azerbaijani Manat",
    "symbol_native": "ман.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "AZN",
    "name_plural": "Azerbaijani manats"
  },
  "BAM": {
    "symbol": "KM",
    "name": "Bosnia-Herzegovina Convertible Mark",
    "symbol_native": "KM",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BAM",
    "name_plural": "Bosnia-Herzegovina convertible marks"
  },
  "BDT": {
    "symbol": "Tk",
    "name": "Bangladeshi Taka",
    "symbol_native": "৳",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BDT",
    "name_plural": "Bangladeshi takas"
  },
  "BGN": {
    "symbol": "BGN",
    "name": "Bulgarian Lev",
    "symbol_native": "лв.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BGN",
    "name_plural": "Bulgarian leva"
  },
  "BHD": {
    "symbol": "BD",
    "name": "Bahraini Dinar",
    "symbol_native": "د.ب.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "BHD",
    "name_plural": "Bahraini dinars"
  },
  "BIF": {
    "symbol": "FBu",
    "name": "Burundian Franc",
    "symbol_native": "FBu",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "BIF",
    "name_plural": "Burundian francs"
  },
  "BND": {
    "symbol": "BN\$",
    "name": "Brunei Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BND",
    "name_plural": "Brunei dollars"
  },
  "BOB": {
    "symbol": "Bs",
    "name": "Bolivian Boliviano",
    "symbol_native": "Bs",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BOB",
    "name_plural": "Bolivian bolivianos"
  },
  "BRL": {
    "symbol": "R\$",
    "name": "Brazilian Real",
    "symbol_native": "R\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BRL",
    "name_plural": "Brazilian reals"
  },
  "BWP": {
    "symbol": "BWP",
    "name": "Botswanan Pula",
    "symbol_native": "P",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BWP",
    "name_plural": "Botswanan pulas"
  },
  "BYN": {
    "symbol": "Br",
    "name": "Belarusian Ruble",
    "symbol_native": "руб.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BYN",
    "name_plural": "Belarusian rubles"
  },
  "BZD": {
    "symbol": "BZ\$",
    "name": "Belize Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "BZD",
    "name_plural": "Belize dollars"
  },
  "CDF": {
    "symbol": "CDF",
    "name": "Congolese Franc",
    "symbol_native": "FrCD",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "CDF",
    "name_plural": "Congolese francs"
  },
  "CHF": {
    "symbol": "CHF",
    "name": "Swiss Franc",
    "symbol_native": "CHF",
    "decimal_digits": 2,
    "rounding": 0.05,
    "code": "CHF",
    "name_plural": "Swiss francs"
  },
  "CLP": {
    "symbol": "CL\$",
    "name": "Chilean Peso",
    "symbol_native": "\$",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "CLP",
    "name_plural": "Chilean pesos"
  },
  "CNY": {
    "symbol": "CN¥",
    "name": "Chinese Yuan",
    "symbol_native": "CN¥",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "CNY",
    "name_plural": "Chinese yuan"
  },
  "COP": {
    "symbol": "CO\$",
    "name": "Colombian Peso",
    "symbol_native": "\$",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "COP",
    "name_plural": "Colombian pesos"
  },
  "CRC": {
    "symbol": "₡",
    "name": "Costa Rican Colón",
    "symbol_native": "₡",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "CRC",
    "name_plural": "Costa Rican colóns"
  },
  "CVE": {
    "symbol": "CV\$",
    "name": "Cape Verdean Escudo",
    "symbol_native": "CV\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "CVE",
    "name_plural": "Cape Verdean escudos"
  },
  "CZK": {
    "symbol": "Kč",
    "name": "Czech Republic Koruna",
    "symbol_native": "Kč",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "CZK",
    "name_plural": "Czech Republic korunas"
  },
  "DJF": {
    "symbol": "Fdj",
    "name": "Djiboutian Franc",
    "symbol_native": "Fdj",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "DJF",
    "name_plural": "Djiboutian francs"
  },
  "DKK": {
    "symbol": "Dkr",
    "name": "Danish Krone",
    "symbol_native": "kr",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "DKK",
    "name_plural": "Danish kroner"
  },
  "DOP": {
    "symbol": "RD\$",
    "name": "Dominican Peso",
    "symbol_native": "RD\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "DOP",
    "name_plural": "Dominican pesos"
  },
  "DZD": {
    "symbol": "DA",
    "name": "Algerian Dinar",
    "symbol_native": "د.ج.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "DZD",
    "name_plural": "Algerian dinars"
  },
  "EEK": {
    "symbol": "Ekr",
    "name": "Estonian Kroon",
    "symbol_native": "kr",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "EEK",
    "name_plural": "Estonian kroons"
  },
  "EGP": {
    "symbol": "EGP",
    "name": "Egyptian Pound",
    "symbol_native": "ج.م.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "EGP",
    "name_plural": "Egyptian pounds"
  },
  "ERN": {
    "symbol": "Nfk",
    "name": "Eritrean Nakfa",
    "symbol_native": "Nfk",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "ERN",
    "name_plural": "Eritrean nakfas"
  },
  "ETB": {
    "symbol": "Br",
    "name": "Ethiopian Birr",
    "symbol_native": "Br",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "ETB",
    "name_plural": "Ethiopian birrs"
  },
  "GBP": {
    "symbol": "£",
    "name": "British Pound Sterling",
    "symbol_native": "£",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "GBP",
    "name_plural": "British pounds sterling",
    "emoji": "🇬🇧",
    "unicode": "U+1F1EC U+1F1E7",
    "image": "https://www.worldometers.info/img/flags/small/tn_uk-flag.gif",
    "isoAlpha2": "GB",
    "isoAlpha3": "GBR",
    "isoNumeric": 826,
    "currency": {"code": "GBP", "name": "Pound", "symbol": "£"},
  },
  "GEL": {
    "symbol": "GEL",
    "name": "Georgian Lari",
    "symbol_native": "GEL",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "GEL",
    "name_plural": "Georgian laris"
  },
  "GHS": {
    "symbol": "GH₵",
    "name": "Ghanaian Cedi",
    "symbol_native": "GH₵",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "GHS",
    "name_plural": "Ghanaian cedis",
    "emoji": "🇬🇭",
    "unicode": "U+1F1EC U+1F1ED",
    "image": "https://www.worldometers.info/img/flags/small/tn_gh-flag.gif",
    "isoAlpha2": "GH",
    "isoAlpha3": "GHA",
    "isoNumeric": 288,
    "currency": {"code": "GHC", "name": "Cedi", "symbol": "¢"},
  },
  "GNF": {
    "symbol": "FG",
    "name": "Guinean Franc",
    "symbol_native": "FG",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "GNF",
    "name_plural": "Guinean francs"
  },
  "GTQ": {
    "symbol": "GTQ",
    "name": "Guatemalan Quetzal",
    "symbol_native": "Q",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "GTQ",
    "name_plural": "Guatemalan quetzals"
  },
  "HKD": {
    "symbol": "HK\$",
    "name": "Hong Kong Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "HKD",
    "name_plural": "Hong Kong dollars"
  },
  "HNL": {
    "symbol": "HNL",
    "name": "Honduran Lempira",
    "symbol_native": "L",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "HNL",
    "name_plural": "Honduran lempiras"
  },
  "HRK": {
    "symbol": "kn",
    "name": "Croatian Kuna",
    "symbol_native": "kn",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "HRK",
    "name_plural": "Croatian kunas"
  },
  "HUF": {
    "symbol": "Ft",
    "name": "Hungarian Forint",
    "symbol_native": "Ft",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "HUF",
    "name_plural": "Hungarian forints"
  },
  "IDR": {
    "symbol": "Rp",
    "name": "Indonesian Rupiah",
    "symbol_native": "Rp",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "IDR",
    "name_plural": "Indonesian rupiahs"
  },
  "ILS": {
    "symbol": "₪",
    "name": "Israeli New Sheqel",
    "symbol_native": "₪",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "ILS",
    "name_plural": "Israeli new sheqels"
  },
  "INR": {
    "symbol": "Rs",
    "name": "Indian Rupee",
    "symbol_native": "টকা",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "INR",
    "name_plural": "Indian rupees"
  },
  "IQD": {
    "symbol": "IQD",
    "name": "Iraqi Dinar",
    "symbol_native": "د.ع.‏",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "IQD",
    "name_plural": "Iraqi dinars"
  },
  "IRR": {
    "symbol": "IRR",
    "name": "Iranian Rial",
    "symbol_native": "﷼",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "IRR",
    "name_plural": "Iranian rials"
  },
  "ISK": {
    "symbol": "Ikr",
    "name": "Icelandic Króna",
    "symbol_native": "kr",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "ISK",
    "name_plural": "Icelandic krónur"
  },
  "JMD": {
    "symbol": "J\$",
    "name": "Jamaican Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "JMD",
    "name_plural": "Jamaican dollars"
  },
  "JOD": {
    "symbol": "JD",
    "name": "Jordanian Dinar",
    "symbol_native": "د.أ.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "JOD",
    "name_plural": "Jordanian dinars"
  },
  "JPY": {
    "symbol": "¥",
    "name": "Japanese Yen",
    "symbol_native": "￥",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "JPY",
    "name_plural": "Japanese yen"
  },
  "KES": {
    "symbol": "Ksh",
    "name": "Kenyan Shilling",
    "symbol_native": "Ksh",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "KES",
    "name_plural": "Kenyan shillings",
    "emoji": "🇰🇪",
    "unicode": "U+1F1F0 U+1F1EA",
    "image": "https://www.worldometers.info/img/flags/small/tn_ke-flag.gif",
    "isoAlpha2": "KE",
    "isoAlpha3": "KEN",
    "isoNumeric": 404,
    "currency": {"code": "KES", "name": "Shilling", "symbol": false},
  },
  "KHR": {
    "symbol": "KHR",
    "name": "Cambodian Riel",
    "symbol_native": "៛",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "KHR",
    "name_plural": "Cambodian riels"
  },
  "KMF": {
    "symbol": "CF",
    "name": "Comorian Franc",
    "symbol_native": "FC",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "KMF",
    "name_plural": "Comorian francs"
  },
  "KRW": {
    "symbol": "₩",
    "name": "South Korean Won",
    "symbol_native": "₩",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "KRW",
    "name_plural": "South Korean won"
  },
  "KWD": {
    "symbol": "KD",
    "name": "Kuwaiti Dinar",
    "symbol_native": "د.ك.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "KWD",
    "name_plural": "Kuwaiti dinars"
  },
  "KZT": {
    "symbol": "KZT",
    "name": "Kazakhstani Tenge",
    "symbol_native": "тңг.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "KZT",
    "name_plural": "Kazakhstani tenges"
  },
  "LBP": {
    "symbol": "L.L.",
    "name": "Lebanese Pound",
    "symbol_native": "ل.ل.‏",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "LBP",
    "name_plural": "Lebanese pounds"
  },
  "LKR": {
    "symbol": "SLRs",
    "name": "Sri Lankan Rupee",
    "symbol_native": "SL Re",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "LKR",
    "name_plural": "Sri Lankan rupees"
  },
  "LTL": {
    "symbol": "Lt",
    "name": "Lithuanian Litas",
    "symbol_native": "Lt",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "LTL",
    "name_plural": "Lithuanian litai"
  },
  "LVL": {
    "symbol": "Ls",
    "name": "Latvian Lats",
    "symbol_native": "Ls",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "LVL",
    "name_plural": "Latvian lati"
  },
  "LYD": {
    "symbol": "LD",
    "name": "Libyan Dinar",
    "symbol_native": "د.ل.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "LYD",
    "name_plural": "Libyan dinars"
  },
  "MAD": {
    "symbol": "MAD",
    "name": "Moroccan Dirham",
    "symbol_native": "د.م.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MAD",
    "name_plural": "Moroccan dirhams"
  },
  "MDL": {
    "symbol": "MDL",
    "name": "Moldovan Leu",
    "symbol_native": "MDL",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MDL",
    "name_plural": "Moldovan lei"
  },
  "MGA": {
    "symbol": "MGA",
    "name": "Malagasy Ariary",
    "symbol_native": "MGA",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "MGA",
    "name_plural": "Malagasy Ariaries"
  },
  "MKD": {
    "symbol": "MKD",
    "name": "Macedonian Denar",
    "symbol_native": "MKD",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MKD",
    "name_plural": "Macedonian denari"
  },
  "MMK": {
    "symbol": "MMK",
    "name": "Myanma Kyat",
    "symbol_native": "K",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "MMK",
    "name_plural": "Myanma kyats"
  },
  "MOP": {
    "symbol": "MOP\$",
    "name": "Macanese Pataca",
    "symbol_native": "MOP\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MOP",
    "name_plural": "Macanese patacas"
  },
  "MUR": {
    "symbol": "MURs",
    "name": "Mauritian Rupee",
    "symbol_native": "MURs",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "MUR",
    "name_plural": "Mauritian rupees"
  },
  "MXN": {
    "symbol": "MX\$",
    "name": "Mexican Peso",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MXN",
    "name_plural": "Mexican pesos"
  },
  "MYR": {
    "symbol": "RM",
    "name": "Malaysian Ringgit",
    "symbol_native": "RM",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MYR",
    "name_plural": "Malaysian ringgits"
  },
  "MZN": {
    "symbol": "MTn",
    "name": "Mozambican Metical",
    "symbol_native": "MTn",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "MZN",
    "name_plural": "Mozambican meticals"
  },
  "NAD": {
    "symbol": "N\$",
    "name": "Namibian Dollar",
    "symbol_native": "N\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NAD",
    "name_plural": "Namibian dollars"
  },
  "NGN": {
    "symbol": "₦",
    "name": "Nigerian Naira",
    "symbol_native": "₦",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NGN",
    "name_plural": "Nigerian nairas",
    "emoji": "🇳🇬",
    "unicode": "U+1F1F3 U+1F1EC",
    "image": "https://www.worldometers.info/img/flags/small/tn_ni-flag.gif",
    "isoAlpha3": "NGA",
    "isoNumeric": 566,
    "currency": {"code": "NGN", "name": "Naira", "symbol": "₦"},
  },
  "NIO": {
    "symbol": "C\$",
    "name": "Nicaraguan Córdoba",
    "symbol_native": "C\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NIO",
    "name_plural": "Nicaraguan córdobas"
  },
  "NOK": {
    "symbol": "Nkr",
    "name": "Norwegian Krone",
    "symbol_native": "kr",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NOK",
    "name_plural": "Norwegian kroner"
  },
  "NPR": {
    "symbol": "NPRs",
    "name": "Nepalese Rupee",
    "symbol_native": "नेरू",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NPR",
    "name_plural": "Nepalese rupees"
  },
  "NZD": {
    "symbol": "NZ\$",
    "name": "New Zealand Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "NZD",
    "name_plural": "New Zealand dollars"
  },
  "OMR": {
    "symbol": "OMR",
    "name": "Omani Rial",
    "symbol_native": "ر.ع.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "OMR",
    "name_plural": "Omani rials"
  },
  "PAB": {
    "symbol": "B/.",
    "name": "Panamanian Balboa",
    "symbol_native": "B/.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "PAB",
    "name_plural": "Panamanian balboas"
  },
  "PEN": {
    "symbol": "S/.",
    "name": "Peruvian Nuevo Sol",
    "symbol_native": "S/.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "PEN",
    "name_plural": "Peruvian nuevos soles"
  },
  "PHP": {
    "symbol": "₱",
    "name": "Philippine Peso",
    "symbol_native": "₱",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "PHP",
    "name_plural": "Philippine pesos"
  },
  "PKR": {
    "symbol": "PKRs",
    "name": "Pakistani Rupee",
    "symbol_native": "₨",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "PKR",
    "name_plural": "Pakistani rupees"
  },
  "PLN": {
    "symbol": "zł",
    "name": "Polish Zloty",
    "symbol_native": "zł",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "PLN",
    "name_plural": "Polish zlotys"
  },
  "PYG": {
    "symbol": "₲",
    "name": "Paraguayan Guarani",
    "symbol_native": "₲",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "PYG",
    "name_plural": "Paraguayan guaranis"
  },
  "QAR": {
    "symbol": "QR",
    "name": "Qatari Rial",
    "symbol_native": "ر.ق.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "QAR",
    "name_plural": "Qatari rials"
  },
  "RON": {
    "symbol": "RON",
    "name": "Romanian Leu",
    "symbol_native": "RON",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "RON",
    "name_plural": "Romanian lei"
  },
  "RSD": {
    "symbol": "din.",
    "name": "Serbian Dinar",
    "symbol_native": "дин.",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "RSD",
    "name_plural": "Serbian dinars"
  },
  "RUB": {
    "symbol": "RUB",
    "name": "Russian Ruble",
    "symbol_native": "₽.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "RUB",
    "name_plural": "Russian rubles"
  },
  "RWF": {
    "symbol": "RWF",
    "name": "Rwandan Franc",
    "symbol_native": "FR",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "RWF",
    "name_plural": "Rwandan francs"
  },
  "SAR": {
    "symbol": "SR",
    "name": "Saudi Riyal",
    "symbol_native": "ر.س.‏",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "SAR",
    "name_plural": "Saudi riyals"
  },
  "SDG": {
    "symbol": "SDG",
    "name": "Sudanese Pound",
    "symbol_native": "SDG",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "SDG",
    "name_plural": "Sudanese pounds"
  },
  "SEK": {
    "symbol": "Skr",
    "name": "Swedish Krona",
    "symbol_native": "kr",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "SEK",
    "name_plural": "Swedish kronor"
  },
  "SGD": {
    "symbol": "S\$",
    "name": "Singapore Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "SGD",
    "name_plural": "Singapore dollars"
  },
  "SOS": {
    "symbol": "Ssh",
    "name": "Somali Shilling",
    "symbol_native": "Ssh",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "SOS",
    "name_plural": "Somali shillings"
  },
  "SYP": {
    "symbol": "SY£",
    "name": "Syrian Pound",
    "symbol_native": "ل.س.‏",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "SYP",
    "name_plural": "Syrian pounds"
  },
  "THB": {
    "symbol": "฿",
    "name": "Thai Baht",
    "symbol_native": "฿",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "THB",
    "name_plural": "Thai baht"
  },
  "TND": {
    "symbol": "DT",
    "name": "Tunisian Dinar",
    "symbol_native": "د.ت.‏",
    "decimal_digits": 3,
    "rounding": 0,
    "code": "TND",
    "name_plural": "Tunisian dinars"
  },
  "TOP": {
    "symbol": "T\$",
    "name": "Tongan Paʻanga",
    "symbol_native": "T\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "TOP",
    "name_plural": "Tongan paʻanga"
  },
  "TRY": {
    "symbol": "TL",
    "name": "Turkish Lira",
    "symbol_native": "TL",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "TRY",
    "name_plural": "Turkish Lira"
  },
  "TTD": {
    "symbol": "TT\$",
    "name": "Trinidad and Tobago Dollar",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "TTD",
    "name_plural": "Trinidad and Tobago dollars"
  },
  "TWD": {
    "symbol": "NT\$",
    "name": "New Taiwan Dollar",
    "symbol_native": "NT\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "TWD",
    "name_plural": "New Taiwan dollars"
  },
  "TZS": {
    "symbol": "TSh",
    "name": "Tanzanian Shilling",
    "symbol_native": "TSh",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "TZS",
    "name_plural": "Tanzanian shillings"
  },
  "UAH": {
    "symbol": "₴",
    "name": "Ukrainian Hryvnia",
    "symbol_native": "₴",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "UAH",
    "name_plural": "Ukrainian hryvnias"
  },
  "UGX": {
    "symbol": "USh",
    "name": "Ugandan Shilling",
    "symbol_native": "USh",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "UGX",
    "name_plural": "Ugandan shillings"
  },
  "UYU": {
    "symbol": "\$U",
    "name": "Uruguayan Peso",
    "symbol_native": "\$",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "UYU",
    "name_plural": "Uruguayan pesos"
  },
  "UZS": {
    "symbol": "UZS",
    "name": "Uzbekistan Som",
    "symbol_native": "UZS",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "UZS",
    "name_plural": "Uzbekistan som"
  },
  "VEF": {
    "symbol": "Bs.F.",
    "name": "Venezuelan Bolívar",
    "symbol_native": "Bs.F.",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "VEF",
    "name_plural": "Venezuelan bolívars"
  },
  "VND": {
    "symbol": "₫",
    "name": "Vietnamese Dong",
    "symbol_native": "₫",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "VND",
    "name_plural": "Vietnamese dong"
  },
  "XAF": {
    "symbol": "FCFA",
    "name": "CFA Franc BEAC",
    "symbol_native": "FCFA",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "XAF",
    "name_plural": "CFA francs BEAC"
  },
  "XOF": {
    "symbol": "CFA",
    "name": "CFA Franc BCEAO",
    "symbol_native": "CFA",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "XOF",
    "name_plural": "CFA francs BCEAO"
  },
  "YER": {
    "symbol": "YR",
    "name": "Yemeni Rial",
    "symbol_native": "ر.ي.‏",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "YER",
    "name_plural": "Yemeni rials"
  },
  "ZAR": {
    "symbol": "R",
    "name": "South African Rand",
    "symbol_native": "R",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "ZAR",
    "name_plural": "South African rand"
  },
  "ZMK": {
    "symbol": "ZK",
    "name": "Zambian Kwacha",
    "symbol_native": "ZK",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "ZMK",
    "name_plural": "Zambian kwachas"
  },
  "ZWL": {
    "symbol": "ZWL\$",
    "name": "Zimbabwean Dollar",
    "symbol_native": "ZWL\$",
    "decimal_digits": 0,
    "rounding": 0,
    "code": "ZWL",
    "name_plural": "Zimbabwean Dollar"
  },
  "BTC": {
    "symbol": "",
    "name": "Bitcoin",
    "symbol_native": "",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "EUR",
    "name_plural": "euros",
    "emoji": "",
    "unicode": "U+1F1EA U+1F1FA",
    "image": "https://cryptologos.cc/logos/bitcoin-btc-logo.png?v=035",
    "isoAlpha2": "PT",
    "isoAlpha3": "PRT",
    "isoNumeric": 620,
    "currency": {"code": "EUR", "name": "Euro", "symbol": "€"},
  },
  "USDC": {
    "symbol": "",
    "name": "USDC",
    "symbol_native": "",
    "decimal_digits": 2,
    "rounding": 0,
    "code": "EUR",
    "name_plural": "euros",
    "emoji": "",
    "unicode": "U+1F1EA U+1F1FA",
    "image": "https://cryptologos.cc/logos/usd-coin-usdc-logo.png?v=035",
    "isoAlpha2": "PT",
    "isoAlpha3": "PRT",
    "isoNumeric": 620,
    "currency": {"code": "EUR", "name": "Euro", "symbol": "€"},
  },
};



// const kAllcountries = [
//   {
//     "name": "Ascension Island",
//     "code": "AC",
//     "emoji": "🇦🇨",
//     "unicode": "U+1F1E6 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AC.svg"
//   },
//   {
//     "name": "Andorra",
//     "code": "AD",
//     "emoji": "🇦🇩",
//     "unicode": "U+1F1E6 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AD.svg"
//   },
//   {
//     "name": "United Arab Emirates",
//     "code": "AE",
//     "emoji": "🇦🇪",
//     "unicode": "U+1F1E6 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AE.svg"
//   },
//   {
//     "name": "Afghanistan",
//     "code": "AF",
//     "emoji": "🇦🇫",
//     "unicode": "U+1F1E6 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AF.svg"
//   },
//   {
//     "name": "Antigua & Barbuda",
//     "code": "AG",
//     "emoji": "🇦🇬",
//     "unicode": "U+1F1E6 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AG.svg"
//   },
//   {
//     "name": "Anguilla",
//     "code": "AI",
//     "emoji": "🇦🇮",
//     "unicode": "U+1F1E6 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AI.svg"
//   },
//   {
//     "name": "Albania",
//     "code": "AL",
//     "emoji": "🇦🇱",
//     "unicode": "U+1F1E6 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AL.svg"
//   },
//   {
//     "name": "Armenia",
//     "code": "AM",
//     "emoji": "🇦🇲",
//     "unicode": "U+1F1E6 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AM.svg"
//   },
//   {
//     "name": "Angola",
//     "code": "AO",
//     "emoji": "🇦🇴",
//     "unicode": "U+1F1E6 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AO.svg"
//   },
//   {
//     "name": "Antarctica",
//     "code": "AQ",
//     "emoji": "🇦🇶",
//     "unicode": "U+1F1E6 U+1F1F6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AQ.svg"
//   },
//   {
//     "name": "Argentina",
//     "code": "AR",
//     "emoji": "🇦🇷",
//     "unicode": "U+1F1E6 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AR.svg"
//   },
//   {
//     "name": "American Samoa",
//     "code": "AS",
//     "emoji": "🇦🇸",
//     "unicode": "U+1F1E6 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AS.svg"
//   },
//   {
//     "name": "Austria",
//     "code": "AT",
//     "emoji": "🇦🇹",
//     "unicode": "U+1F1E6 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AT.svg"
//   },
//   {
//     "name": "Australia",
//     "code": "AU",
//     "emoji": "🇦🇺",
//     "unicode": "U+1F1E6 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AU.svg"
//   },
//   {
//     "name": "Aruba",
//     "code": "AW",
//     "emoji": "🇦🇼",
//     "unicode": "U+1F1E6 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AW.svg"
//   },
//   {
//     "name": "Åland Islands",
//     "code": "AX",
//     "emoji": "🇦🇽",
//     "unicode": "U+1F1E6 U+1F1FD",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AX.svg"
//   },
//   {
//     "name": "Azerbaijan",
//     "code": "AZ",
//     "emoji": "🇦🇿",
//     "unicode": "U+1F1E6 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/AZ.svg"
//   },
//   {
//     "name": "Bosnia & Herzegovina",
//     "code": "BA",
//     "emoji": "🇧🇦",
//     "unicode": "U+1F1E7 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BA.svg"
//   },
//   {
//     "name": "Barbados",
//     "code": "BB",
//     "emoji": "🇧🇧",
//     "unicode": "U+1F1E7 U+1F1E7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BB.svg"
//   },
//   {
//     "name": "Bangladesh",
//     "code": "BD",
//     "emoji": "🇧🇩",
//     "unicode": "U+1F1E7 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BD.svg"
//   },
//   {
//     "name": "Belgium",
//     "code": "BE",
//     "emoji": "🇧🇪",
//     "unicode": "U+1F1E7 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BE.svg"
//   },
//   {
//     "name": "Burkina Faso",
//     "code": "BF",
//     "emoji": "🇧🇫",
//     "unicode": "U+1F1E7 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BF.svg"
//   },
//   {
//     "name": "Bulgaria",
//     "code": "BG",
//     "emoji": "🇧🇬",
//     "unicode": "U+1F1E7 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BG.svg"
//   },
//   {
//     "name": "Bahrain",
//     "code": "BH",
//     "emoji": "🇧🇭",
//     "unicode": "U+1F1E7 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BH.svg"
//   },
//   {
//     "name": "Burundi",
//     "code": "BI",
//     "emoji": "🇧🇮",
//     "unicode": "U+1F1E7 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BI.svg"
//   },
//   {
//     "name": "Benin",
//     "code": "BJ",
//     "emoji": "🇧🇯",
//     "unicode": "U+1F1E7 U+1F1EF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BJ.svg"
//   },
//   {
//     "name": "St. Barthélemy",
//     "code": "BL",
//     "emoji": "🇧🇱",
//     "unicode": "U+1F1E7 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BL.svg"
//   },
//   {
//     "name": "Bermuda",
//     "code": "BM",
//     "emoji": "🇧🇲",
//     "unicode": "U+1F1E7 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BM.svg"
//   },
//   {
//     "name": "Brunei",
//     "code": "BN",
//     "emoji": "🇧🇳",
//     "unicode": "U+1F1E7 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BN.svg"
//   },
//   {
//     "name": "Bolivia",
//     "code": "BO",
//     "emoji": "🇧🇴",
//     "unicode": "U+1F1E7 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BO.svg"
//   },
//   {
//     "name": "Caribbean Netherlands",
//     "code": "BQ",
//     "emoji": "🇧🇶",
//     "unicode": "U+1F1E7 U+1F1F6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BQ.svg"
//   },
//   {
//     "name": "Brazil",
//     "code": "BR",
//     "emoji": "🇧🇷",
//     "unicode": "U+1F1E7 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BR.svg"
//   },
//   {
//     "name": "Bahamas",
//     "code": "BS",
//     "emoji": "🇧🇸",
//     "unicode": "U+1F1E7 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BS.svg"
//   },
//   {
//     "name": "Bhutan",
//     "code": "BT",
//     "emoji": "🇧🇹",
//     "unicode": "U+1F1E7 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BT.svg"
//   },
//   {
//     "name": "Bouvet Island",
//     "code": "BV",
//     "emoji": "🇧🇻",
//     "unicode": "U+1F1E7 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BV.svg"
//   },
//   {
//     "name": "Botswana",
//     "code": "BW",
//     "emoji": "🇧🇼",
//     "unicode": "U+1F1E7 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BW.svg"
//   },
//   {
//     "name": "Belarus",
//     "code": "BY",
//     "emoji": "🇧🇾",
//     "unicode": "U+1F1E7 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BY.svg"
//   },
//   {
//     "name": "Belize",
//     "code": "BZ",
//     "emoji": "🇧🇿",
//     "unicode": "U+1F1E7 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BZ.svg"
//   },
//   {
//     "name": "Canada",
//     "code": "CA",
//     "emoji": "🇨🇦",
//     "unicode": "U+1F1E8 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CA.svg"
//   },
//   {
//     "name": "Cocos (Keeling) Islands",
//     "code": "CC",
//     "emoji": "🇨🇨",
//     "unicode": "U+1F1E8 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CC.svg"
//   },
//   {
//     "name": "Congo - Kinshasa",
//     "code": "CD",
//     "emoji": "🇨🇩",
//     "unicode": "U+1F1E8 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CD.svg"
//   },
//   {
//     "name": "Central African Republic",
//     "code": "CF",
//     "emoji": "🇨🇫",
//     "unicode": "U+1F1E8 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CF.svg"
//   },
//   {
//     "name": "Congo - Brazzaville",
//     "code": "CG",
//     "emoji": "🇨🇬",
//     "unicode": "U+1F1E8 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CG.svg"
//   },
//   {
//     "name": "Switzerland",
//     "code": "CH",
//     "emoji": "🇨🇭",
//     "unicode": "U+1F1E8 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CH.svg"
//   },
//   {
//     "name": "Côte d’Ivoire",
//     "code": "CI",
//     "emoji": "🇨🇮",
//     "unicode": "U+1F1E8 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CI.svg"
//   },
//   {
//     "name": "Cook Islands",
//     "code": "CK",
//     "emoji": "🇨🇰",
//     "unicode": "U+1F1E8 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CK.svg"
//   },
//   {
//     "name": "Chile",
//     "code": "CL",
//     "emoji": "🇨🇱",
//     "unicode": "U+1F1E8 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CL.svg"
//   },
//   {
//     "name": "Cameroon",
//     "code": "CM",
//     "emoji": "🇨🇲",
//     "unicode": "U+1F1E8 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CM.svg"
//   },
//   {
//     "name": "China",
//     "code": "CN",
//     "emoji": "🇨🇳",
//     "unicode": "U+1F1E8 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CN.svg"
//   },
//   {
//     "name": "Colombia",
//     "code": "CO",
//     "emoji": "🇨🇴",
//     "unicode": "U+1F1E8 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CO.svg"
//   },
//   {
//     "name": "Clipperton Island",
//     "code": "CP",
//     "emoji": "🇨🇵",
//     "unicode": "U+1F1E8 U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CP.svg"
//   },
//   {
//     "name": "Costa Rica",
//     "code": "CR",
//     "emoji": "🇨🇷",
//     "unicode": "U+1F1E8 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CR.svg"
//   },
//   {
//     "name": "Cuba",
//     "code": "CU",
//     "emoji": "🇨🇺",
//     "unicode": "U+1F1E8 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CU.svg"
//   },
//   {
//     "name": "Cape Verde",
//     "code": "CV",
//     "emoji": "🇨🇻",
//     "unicode": "U+1F1E8 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CV.svg"
//   },
//   {
//     "name": "Curaçao",
//     "code": "CW",
//     "emoji": "🇨🇼",
//     "unicode": "U+1F1E8 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CW.svg"
//   },
//   {
//     "name": "Christmas Island",
//     "code": "CX",
//     "emoji": "🇨🇽",
//     "unicode": "U+1F1E8 U+1F1FD",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CX.svg"
//   },
//   {
//     "name": "Cyprus",
//     "code": "CY",
//     "emoji": "🇨🇾",
//     "unicode": "U+1F1E8 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CY.svg"
//   },
//   {
//     "name": "Czechia",
//     "code": "CZ",
//     "emoji": "🇨🇿",
//     "unicode": "U+1F1E8 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/CZ.svg"
//   },
//   {
//     "name": "Germany",
//     "code": "DE",
//     "emoji": "🇩🇪",
//     "unicode": "U+1F1E9 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DE.svg"
//   },
//   {
//     "name": "Diego Garcia",
//     "code": "DG",
//     "emoji": "🇩🇬",
//     "unicode": "U+1F1E9 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DG.svg"
//   },
//   {
//     "name": "Djibouti",
//     "code": "DJ",
//     "emoji": "🇩🇯",
//     "unicode": "U+1F1E9 U+1F1EF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DJ.svg"
//   },
//   {
//     "name": "Denmark",
//     "code": "DK",
//     "emoji": "🇩🇰",
//     "unicode": "U+1F1E9 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DK.svg"
//   },
//   {
//     "name": "Dominica",
//     "code": "DM",
//     "emoji": "🇩🇲",
//     "unicode": "U+1F1E9 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DM.svg"
//   },
//   {
//     "name": "Dominican Republic",
//     "code": "DO",
//     "emoji": "🇩🇴",
//     "unicode": "U+1F1E9 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DO.svg"
//   },
//   {
//     "name": "Algeria",
//     "code": "DZ",
//     "emoji": "🇩🇿",
//     "unicode": "U+1F1E9 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DZ.svg"
//   },
//   {
//     "name": "Ceuta & Melilla",
//     "code": "EA",
//     "emoji": "🇪🇦",
//     "unicode": "U+1F1EA U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EA.svg"
//   },
//   {
//     "name": "Ecuador",
//     "code": "EC",
//     "emoji": "🇪🇨",
//     "unicode": "U+1F1EA U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EC.svg"
//   },
//   {
//     "name": "Estonia",
//     "code": "EE",
//     "emoji": "🇪🇪",
//     "unicode": "U+1F1EA U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EE.svg"
//   },
//   {
//     "name": "Egypt",
//     "code": "EG",
//     "emoji": "🇪🇬",
//     "unicode": "U+1F1EA U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EG.svg"
//   },
//   {
//     "name": "Western Sahara",
//     "code": "EH",
//     "emoji": "🇪🇭",
//     "unicode": "U+1F1EA U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EH.svg"
//   },
//   {
//     "name": "Eritrea",
//     "code": "ER",
//     "emoji": "🇪🇷",
//     "unicode": "U+1F1EA U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ER.svg"
//   },
//   {
//     "name": "Spain",
//     "code": "ES",
//     "emoji": "🇪🇸",
//     "unicode": "U+1F1EA U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ES.svg"
//   },
//   {
//     "name": "Ethiopia",
//     "code": "ET",
//     "emoji": "🇪🇹",
//     "unicode": "U+1F1EA U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ET.svg"
//   },
//   {
//     "name": "European Union",
//     "code": "EU",
//     "emoji": "🇪🇺",
//     "unicode": "U+1F1EA U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/EU.svg"
//   },
//   {
//     "name": "Finland",
//     "code": "FI",
//     "emoji": "🇫🇮",
//     "unicode": "U+1F1EB U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FI.svg"
//   },
//   {
//     "name": "Fiji",
//     "code": "FJ",
//     "emoji": "🇫🇯",
//     "unicode": "U+1F1EB U+1F1EF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FJ.svg"
//   },
//   {
//     "name": "Falkland Islands",
//     "code": "FK",
//     "emoji": "🇫🇰",
//     "unicode": "U+1F1EB U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FK.svg"
//   },
//   {
//     "name": "Micronesia",
//     "code": "FM",
//     "emoji": "🇫🇲",
//     "unicode": "U+1F1EB U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FM.svg"
//   },
//   {
//     "name": "Faroe Islands",
//     "code": "FO",
//     "emoji": "🇫🇴",
//     "unicode": "U+1F1EB U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FO.svg"
//   },
//   {
//     "name": "France",
//     "code": "FR",
//     "emoji": "🇫🇷",
//     "unicode": "U+1F1EB U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/FR.svg"
//   },
//   {
//     "name": "Gabon",
//     "code": "GA",
//     "emoji": "🇬🇦",
//     "unicode": "U+1F1EC U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GA.svg"
//   },
//   {
//     "name": "United Kingdom",
//     "code": "GB",
//     "emoji": "🇬🇧",
//     "unicode": "U+1F1EC U+1F1E7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GB.svg"
//   },
//   {
//     "name": "Grenada",
//     "code": "GD",
//     "emoji": "🇬🇩",
//     "unicode": "U+1F1EC U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GD.svg"
//   },
//   {
//     "name": "Georgia",
//     "code": "GE",
//     "emoji": "🇬🇪",
//     "unicode": "U+1F1EC U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GE.svg"
//   },
//   {
//     "name": "French Guiana",
//     "code": "GF",
//     "emoji": "🇬🇫",
//     "unicode": "U+1F1EC U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GF.svg"
//   },
//   {
//     "name": "Guernsey",
//     "code": "GG",
//     "emoji": "🇬🇬",
//     "unicode": "U+1F1EC U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GG.svg"
//   },
//   {
//     "name": "Ghana",
//     "code": "GH",
//     "emoji": "🇬🇭",
//     "unicode": "U+1F1EC U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GH.svg",
//     "isoAlpha2": "GH",
//     "isoAlpha3": "GHA",
//     "isoNumeric": 288,
//     "currency": {"code": "GHC", "name": "Cedi", "symbol": "¢"},
//   },
//   {
//     "name": "Gibraltar",
//     "code": "GI",
//     "emoji": "🇬🇮",
//     "unicode": "U+1F1EC U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GI.svg"
//   },
//   {
//     "name": "Greenland",
//     "code": "GL",
//     "emoji": "🇬🇱",
//     "unicode": "U+1F1EC U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GL.svg"
//   },
//   {
//     "name": "Gambia",
//     "code": "GM",
//     "emoji": "🇬🇲",
//     "unicode": "U+1F1EC U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GM.svg"
//   },
//   {
//     "name": "Guinea",
//     "code": "GN",
//     "emoji": "🇬🇳",
//     "unicode": "U+1F1EC U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GN.svg"
//   },
//   {
//     "name": "Guadeloupe",
//     "code": "GP",
//     "emoji": "🇬🇵",
//     "unicode": "U+1F1EC U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GP.svg"
//   },
//   {
//     "name": "Equatorial Guinea",
//     "code": "GQ",
//     "emoji": "🇬🇶",
//     "unicode": "U+1F1EC U+1F1F6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GQ.svg"
//   },
//   {
//     "name": "Greece",
//     "code": "GR",
//     "emoji": "🇬🇷",
//     "unicode": "U+1F1EC U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GR.svg"
//   },
//   {
//     "name": "South Georgia & South Sandwich Islands",
//     "code": "GS",
//     "emoji": "🇬🇸",
//     "unicode": "U+1F1EC U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GS.svg"
//   },
//   {
//     "name": "Guatemala",
//     "code": "GT",
//     "emoji": "🇬🇹",
//     "unicode": "U+1F1EC U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GT.svg"
//   },
//   {
//     "name": "Guam",
//     "code": "GU",
//     "emoji": "🇬🇺",
//     "unicode": "U+1F1EC U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GU.svg"
//   },
//   {
//     "name": "Guinea-Bissau",
//     "code": "GW",
//     "emoji": "🇬🇼",
//     "unicode": "U+1F1EC U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GW.svg"
//   },
//   {
//     "name": "Guyana",
//     "code": "GY",
//     "emoji": "🇬🇾",
//     "unicode": "U+1F1EC U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GY.svg"
//   },
//   {
//     "name": "Hong Kong SAR China",
//     "code": "HK",
//     "emoji": "🇭🇰",
//     "unicode": "U+1F1ED U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HK.svg"
//   },
//   {
//     "name": "Heard & McDonald Islands",
//     "code": "HM",
//     "emoji": "🇭🇲",
//     "unicode": "U+1F1ED U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HM.svg"
//   },
//   {
//     "name": "Honduras",
//     "code": "HN",
//     "emoji": "🇭🇳",
//     "unicode": "U+1F1ED U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HN.svg"
//   },
//   {
//     "name": "Croatia",
//     "code": "HR",
//     "emoji": "🇭🇷",
//     "unicode": "U+1F1ED U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HR.svg"
//   },
//   {
//     "name": "Haiti",
//     "code": "HT",
//     "emoji": "🇭🇹",
//     "unicode": "U+1F1ED U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HT.svg"
//   },
//   {
//     "name": "Hungary",
//     "code": "HU",
//     "emoji": "🇭🇺",
//     "unicode": "U+1F1ED U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/HU.svg"
//   },
//   {
//     "name": "Canary Islands",
//     "code": "IC",
//     "emoji": "🇮🇨",
//     "unicode": "U+1F1EE U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IC.svg"
//   },
//   {
//     "name": "Indonesia",
//     "code": "ID",
//     "emoji": "🇮🇩",
//     "unicode": "U+1F1EE U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ID.svg"
//   },
//   {
//     "name": "Ireland",
//     "code": "IE",
//     "emoji": "🇮🇪",
//     "unicode": "U+1F1EE U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IE.svg"
//   },
//   {
//     "name": "Israel",
//     "code": "IL",
//     "emoji": "🇮🇱",
//     "unicode": "U+1F1EE U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IL.svg"
//   },
//   {
//     "name": "Isle of Man",
//     "code": "IM",
//     "emoji": "🇮🇲",
//     "unicode": "U+1F1EE U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IM.svg"
//   },
//   {
//     "name": "India",
//     "code": "IN",
//     "emoji": "🇮🇳",
//     "unicode": "U+1F1EE U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IN.svg"
//   },
//   {
//     "name": "British Indian Ocean Territory",
//     "code": "IO",
//     "emoji": "🇮🇴",
//     "unicode": "U+1F1EE U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IO.svg"
//   },
//   {
//     "name": "Iraq",
//     "code": "IQ",
//     "emoji": "🇮🇶",
//     "unicode": "U+1F1EE U+1F1F6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IQ.svg"
//   },
//   {
//     "name": "Iran",
//     "code": "IR",
//     "emoji": "🇮🇷",
//     "unicode": "U+1F1EE U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IR.svg"
//   },
//   {
//     "name": "Iceland",
//     "code": "IS",
//     "emoji": "🇮🇸",
//     "unicode": "U+1F1EE U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IS.svg"
//   },
//   {
//     "name": "Italy",
//     "code": "IT",
//     "emoji": "🇮🇹",
//     "unicode": "U+1F1EE U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/IT.svg"
//   },
//   {
//     "name": "Jersey",
//     "code": "JE",
//     "emoji": "🇯🇪",
//     "unicode": "U+1F1EF U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JE.svg"
//   },
//   {
//     "name": "Jamaica",
//     "code": "JM",
//     "emoji": "🇯🇲",
//     "unicode": "U+1F1EF U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JM.svg"
//   },
//   {
//     "name": "Jordan",
//     "code": "JO",
//     "emoji": "🇯🇴",
//     "unicode": "U+1F1EF U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JO.svg"
//   },
//   {
//     "name": "Japan",
//     "code": "JP",
//     "emoji": "🇯🇵",
//     "unicode": "U+1F1EF U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JP.svg"
//   },
//   {
//     "name": "Kenya",
//     "code": "KE",
//     "emoji": "🇰🇪",
//     "unicode": "U+1F1F0 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KE.svg",
//     "isoAlpha2": "KE",
//     "isoAlpha3": "KEN",
//     "isoNumeric": 404,
//     "currency": {"code": "KES", "name": "Shilling", "symbol": false},
//   },
//   {
//     "name": "Kyrgyzstan",
//     "code": "KG",
//     "emoji": "🇰🇬",
//     "unicode": "U+1F1F0 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KG.svg"
//   },
//   {
//     "name": "Cambodia",
//     "code": "KH",
//     "emoji": "🇰🇭",
//     "unicode": "U+1F1F0 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KH.svg"
//   },
//   {
//     "name": "Kiribati",
//     "code": "KI",
//     "emoji": "🇰🇮",
//     "unicode": "U+1F1F0 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KI.svg"
//   },
//   {
//     "name": "Comoros",
//     "code": "KM",
//     "emoji": "🇰🇲",
//     "unicode": "U+1F1F0 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KM.svg"
//   },
//   {
//     "name": "St. Kitts & Nevis",
//     "code": "KN",
//     "emoji": "🇰🇳",
//     "unicode": "U+1F1F0 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KN.svg"
//   },
//   {
//     "name": "North Korea",
//     "code": "KP",
//     "emoji": "🇰🇵",
//     "unicode": "U+1F1F0 U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KP.svg"
//   },
//   {
//     "name": "South Korea",
//     "code": "KR",
//     "emoji": "🇰🇷",
//     "unicode": "U+1F1F0 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KR.svg"
//   },
//   {
//     "name": "Kuwait",
//     "code": "KW",
//     "emoji": "🇰🇼",
//     "unicode": "U+1F1F0 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KW.svg"
//   },
//   {
//     "name": "Cayman Islands",
//     "code": "KY",
//     "emoji": "🇰🇾",
//     "unicode": "U+1F1F0 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KY.svg"
//   },
//   {
//     "name": "Kazakhstan",
//     "code": "KZ",
//     "emoji": "🇰🇿",
//     "unicode": "U+1F1F0 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/KZ.svg"
//   },
//   {
//     "name": "Laos",
//     "code": "LA",
//     "emoji": "🇱🇦",
//     "unicode": "U+1F1F1 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LA.svg"
//   },
//   {
//     "name": "Lebanon",
//     "code": "LB",
//     "emoji": "🇱🇧",
//     "unicode": "U+1F1F1 U+1F1E7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LB.svg"
//   },
//   {
//     "name": "St. Lucia",
//     "code": "LC",
//     "emoji": "🇱🇨",
//     "unicode": "U+1F1F1 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LC.svg"
//   },
//   {
//     "name": "Liechtenstein",
//     "code": "LI",
//     "emoji": "🇱🇮",
//     "unicode": "U+1F1F1 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LI.svg"
//   },
//   {
//     "name": "Sri Lanka",
//     "code": "LK",
//     "emoji": "🇱🇰",
//     "unicode": "U+1F1F1 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LK.svg"
//   },
//   {
//     "name": "Liberia",
//     "code": "LR",
//     "emoji": "🇱🇷",
//     "unicode": "U+1F1F1 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LR.svg"
//   },
//   {
//     "name": "Lesotho",
//     "code": "LS",
//     "emoji": "🇱🇸",
//     "unicode": "U+1F1F1 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LS.svg"
//   },
//   {
//     "name": "Lithuania",
//     "code": "LT",
//     "emoji": "🇱🇹",
//     "unicode": "U+1F1F1 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LT.svg"
//   },
//   {
//     "name": "Luxembourg",
//     "code": "LU",
//     "emoji": "🇱🇺",
//     "unicode": "U+1F1F1 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LU.svg"
//   },
//   {
//     "name": "Latvia",
//     "code": "LV",
//     "emoji": "🇱🇻",
//     "unicode": "U+1F1F1 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LV.svg"
//   },
//   {
//     "name": "Libya",
//     "code": "LY",
//     "emoji": "🇱🇾",
//     "unicode": "U+1F1F1 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/LY.svg"
//   },
//   {
//     "name": "Morocco",
//     "code": "MA",
//     "emoji": "🇲🇦",
//     "unicode": "U+1F1F2 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MA.svg"
//   },
//   {
//     "name": "Monaco",
//     "code": "MC",
//     "emoji": "🇲🇨",
//     "unicode": "U+1F1F2 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MC.svg"
//   },
//   {
//     "name": "Moldova",
//     "code": "MD",
//     "emoji": "🇲🇩",
//     "unicode": "U+1F1F2 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MD.svg"
//   },
//   {
//     "name": "Montenegro",
//     "code": "ME",
//     "emoji": "🇲🇪",
//     "unicode": "U+1F1F2 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ME.svg"
//   },
//   {
//     "name": "St. Martin",
//     "code": "MF",
//     "emoji": "🇲🇫",
//     "unicode": "U+1F1F2 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MF.svg"
//   },
//   {
//     "name": "Madagascar",
//     "code": "MG",
//     "emoji": "🇲🇬",
//     "unicode": "U+1F1F2 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MG.svg"
//   },
//   {
//     "name": "Marshall Islands",
//     "code": "MH",
//     "emoji": "🇲🇭",
//     "unicode": "U+1F1F2 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MH.svg"
//   },
//   {
//     "name": "North Macedonia",
//     "code": "MK",
//     "emoji": "🇲🇰",
//     "unicode": "U+1F1F2 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MK.svg"
//   },
//   {
//     "name": "Mali",
//     "code": "ML",
//     "emoji": "🇲🇱",
//     "unicode": "U+1F1F2 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ML.svg"
//   },
//   {
//     "name": "Myanmar (Burma)",
//     "code": "MM",
//     "emoji": "🇲🇲",
//     "unicode": "U+1F1F2 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MM.svg"
//   },
//   {
//     "name": "Mongolia",
//     "code": "MN",
//     "emoji": "🇲🇳",
//     "unicode": "U+1F1F2 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MN.svg"
//   },
//   {
//     "name": "Macao SAR China",
//     "code": "MO",
//     "emoji": "🇲🇴",
//     "unicode": "U+1F1F2 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MO.svg"
//   },
//   {
//     "name": "Northern Mariana Islands",
//     "code": "MP",
//     "emoji": "🇲🇵",
//     "unicode": "U+1F1F2 U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MP.svg"
//   },
//   {
//     "name": "Martinique",
//     "code": "MQ",
//     "emoji": "🇲🇶",
//     "unicode": "U+1F1F2 U+1F1F6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MQ.svg"
//   },
//   {
//     "name": "Mauritania",
//     "code": "MR",
//     "emoji": "🇲🇷",
//     "unicode": "U+1F1F2 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MR.svg"
//   },
//   {
//     "name": "Montserrat",
//     "code": "MS",
//     "emoji": "🇲🇸",
//     "unicode": "U+1F1F2 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MS.svg"
//   },
//   {
//     "name": "Malta",
//     "code": "MT",
//     "emoji": "🇲🇹",
//     "unicode": "U+1F1F2 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MT.svg"
//   },
//   {
//     "name": "Mauritius",
//     "code": "MU",
//     "emoji": "🇲🇺",
//     "unicode": "U+1F1F2 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MU.svg"
//   },
//   {
//     "name": "Maldives",
//     "code": "MV",
//     "emoji": "🇲🇻",
//     "unicode": "U+1F1F2 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MV.svg"
//   },
//   {
//     "name": "Malawi",
//     "code": "MW",
//     "emoji": "🇲🇼",
//     "unicode": "U+1F1F2 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MW.svg"
//   },
//   {
//     "name": "Mexico",
//     "code": "MX",
//     "emoji": "🇲🇽",
//     "unicode": "U+1F1F2 U+1F1FD",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MX.svg"
//   },
//   {
//     "name": "Malaysia",
//     "code": "MY",
//     "emoji": "🇲🇾",
//     "unicode": "U+1F1F2 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MY.svg"
//   },
//   {
//     "name": "Mozambique",
//     "code": "MZ",
//     "emoji": "🇲🇿",
//     "unicode": "U+1F1F2 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/MZ.svg"
//   },
//   {
//     "name": "Namibia",
//     "code": "NA",
//     "emoji": "🇳🇦",
//     "unicode": "U+1F1F3 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NA.svg"
//   },
//   {
//     "name": "New Caledonia",
//     "code": "NC",
//     "emoji": "🇳🇨",
//     "unicode": "U+1F1F3 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NC.svg"
//   },
//   {
//     "name": "Niger",
//     "code": "NE",
//     "emoji": "🇳🇪",
//     "unicode": "U+1F1F3 U+1F1EA",
//     "isoAlpha2": "NG",
//     "isoAlpha3": "NGA",
//     "isoNumeric": 566,
//     "currency": {"code": "NGN", "name": "Naira", "symbol": "₦"},
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NE.svg"
//   },
//   {
//     "name": "Norfolk Island",
//     "code": "NF",
//     "emoji": "🇳🇫",
//     "unicode": "U+1F1F3 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NF.svg"
//   },
//   {
//     "name": "Nigeria",
//     "code": "NG",
//     "emoji": "🇳🇬",
//     "unicode": "U+1F1F3 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NG.svg"
//   },
//   {
//     "name": "Nicaragua",
//     "code": "NI",
//     "emoji": "🇳🇮",
//     "unicode": "U+1F1F3 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NI.svg"
//   },
//   {
//     "name": "Netherlands",
//     "code": "NL",
//     "emoji": "🇳🇱",
//     "unicode": "U+1F1F3 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NL.svg"
//   },
//   {
//     "name": "Norway",
//     "code": "NO",
//     "emoji": "🇳🇴",
//     "unicode": "U+1F1F3 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NO.svg"
//   },
//   {
//     "name": "Nepal",
//     "code": "NP",
//     "emoji": "🇳🇵",
//     "unicode": "U+1F1F3 U+1F1F5",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NP.svg"
//   },
//   {
//     "name": "Nauru",
//     "code": "NR",
//     "emoji": "🇳🇷",
//     "unicode": "U+1F1F3 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NR.svg"
//   },
//   {
//     "name": "Niue",
//     "code": "NU",
//     "emoji": "🇳🇺",
//     "unicode": "U+1F1F3 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NU.svg"
//   },
//   {
//     "name": "New Zealand",
//     "code": "NZ",
//     "emoji": "🇳🇿",
//     "unicode": "U+1F1F3 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NZ.svg"
//   },
//   {
//     "name": "Oman",
//     "code": "OM",
//     "emoji": "🇴🇲",
//     "unicode": "U+1F1F4 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/OM.svg"
//   },
//   {
//     "name": "Panama",
//     "code": "PA",
//     "emoji": "🇵🇦",
//     "unicode": "U+1F1F5 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PA.svg"
//   },
//   {
//     "name": "Peru",
//     "code": "PE",
//     "emoji": "🇵🇪",
//     "unicode": "U+1F1F5 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PE.svg"
//   },
//   {
//     "name": "French Polynesia",
//     "code": "PF",
//     "emoji": "🇵🇫",
//     "unicode": "U+1F1F5 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PF.svg"
//   },
//   {
//     "name": "Papua New Guinea",
//     "code": "PG",
//     "emoji": "🇵🇬",
//     "unicode": "U+1F1F5 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PG.svg"
//   },
//   {
//     "name": "Philippines",
//     "code": "PH",
//     "emoji": "🇵🇭",
//     "unicode": "U+1F1F5 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PH.svg"
//   },
//   {
//     "name": "Pakistan",
//     "code": "PK",
//     "emoji": "🇵🇰",
//     "unicode": "U+1F1F5 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PK.svg"
//   },
//   {
//     "name": "Poland",
//     "code": "PL",
//     "emoji": "🇵🇱",
//     "unicode": "U+1F1F5 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PL.svg"
//   },
//   {
//     "name": "St. Pierre & Miquelon",
//     "code": "PM",
//     "emoji": "🇵🇲",
//     "unicode": "U+1F1F5 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PM.svg"
//   },
//   {
//     "name": "Pitcairn Islands",
//     "code": "PN",
//     "emoji": "🇵🇳",
//     "unicode": "U+1F1F5 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PN.svg"
//   },
//   {
//     "name": "Puerto Rico",
//     "code": "PR",
//     "emoji": "🇵🇷",
//     "unicode": "U+1F1F5 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PR.svg"
//   },
//   {
//     "name": "Palestinian Territories",
//     "code": "PS",
//     "emoji": "🇵🇸",
//     "unicode": "U+1F1F5 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PS.svg"
//   },
//   {
//     "name": "Portugal",
//     "code": "PT",
//     "emoji": "🇵🇹",
//     "unicode": "U+1F1F5 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PT.svg"
//   },
//   {
//     "name": "Palau",
//     "code": "PW",
//     "emoji": "🇵🇼",
//     "unicode": "U+1F1F5 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PW.svg"
//   },
//   {
//     "name": "Paraguay",
//     "code": "PY",
//     "emoji": "🇵🇾",
//     "unicode": "U+1F1F5 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/PY.svg"
//   },
//   {
//     "name": "Qatar",
//     "code": "QA",
//     "emoji": "🇶🇦",
//     "unicode": "U+1F1F6 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/QA.svg"
//   },
//   {
//     "name": "Réunion",
//     "code": "RE",
//     "emoji": "🇷🇪",
//     "unicode": "U+1F1F7 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RE.svg"
//   },
//   {
//     "name": "Romania",
//     "code": "RO",
//     "emoji": "🇷🇴",
//     "unicode": "U+1F1F7 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RO.svg"
//   },
//   {
//     "name": "Serbia",
//     "code": "RS",
//     "emoji": "🇷🇸",
//     "unicode": "U+1F1F7 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RS.svg"
//   },
//   {
//     "name": "Russia",
//     "code": "RU",
//     "emoji": "🇷🇺",
//     "unicode": "U+1F1F7 U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RU.svg"
//   },
//   {
//     "name": "Rwanda",
//     "code": "RW",
//     "emoji": "🇷🇼",
//     "unicode": "U+1F1F7 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/RW.svg"
//   },
//   {
//     "name": "Saudi Arabia",
//     "code": "SA",
//     "emoji": "🇸🇦",
//     "unicode": "U+1F1F8 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SA.svg"
//   },
//   {
//     "name": "Solomon Islands",
//     "code": "SB",
//     "emoji": "🇸🇧",
//     "unicode": "U+1F1F8 U+1F1E7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SB.svg"
//   },
//   {
//     "name": "Seychelles",
//     "code": "SC",
//     "emoji": "🇸🇨",
//     "unicode": "U+1F1F8 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SC.svg"
//   },
//   {
//     "name": "Sudan",
//     "code": "SD",
//     "emoji": "🇸🇩",
//     "unicode": "U+1F1F8 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SD.svg"
//   },
//   {
//     "name": "Sweden",
//     "code": "SE",
//     "emoji": "🇸🇪",
//     "unicode": "U+1F1F8 U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SE.svg"
//   },
//   {
//     "name": "Singapore",
//     "code": "SG",
//     "emoji": "🇸🇬",
//     "unicode": "U+1F1F8 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SG.svg"
//   },
//   {
//     "name": "St. Helena",
//     "code": "SH",
//     "emoji": "🇸🇭",
//     "unicode": "U+1F1F8 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SH.svg"
//   },
//   {
//     "name": "Slovenia",
//     "code": "SI",
//     "emoji": "🇸🇮",
//     "unicode": "U+1F1F8 U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SI.svg"
//   },
//   {
//     "name": "Svalbard & Jan Mayen",
//     "code": "SJ",
//     "emoji": "🇸🇯",
//     "unicode": "U+1F1F8 U+1F1EF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SJ.svg"
//   },
//   {
//     "name": "Slovakia",
//     "code": "SK",
//     "emoji": "🇸🇰",
//     "unicode": "U+1F1F8 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SK.svg"
//   },
//   {
//     "name": "Sierra Leone",
//     "code": "SL",
//     "emoji": "🇸🇱",
//     "unicode": "U+1F1F8 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SL.svg"
//   },
//   {
//     "name": "San Marino",
//     "code": "SM",
//     "emoji": "🇸🇲",
//     "unicode": "U+1F1F8 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SM.svg"
//   },
//   {
//     "name": "Senegal",
//     "code": "SN",
//     "emoji": "🇸🇳",
//     "unicode": "U+1F1F8 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SN.svg"
//   },
//   {
//     "name": "Somalia",
//     "code": "SO",
//     "emoji": "🇸🇴",
//     "unicode": "U+1F1F8 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SO.svg"
//   },
//   {
//     "name": "Suriname",
//     "code": "SR",
//     "emoji": "🇸🇷",
//     "unicode": "U+1F1F8 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SR.svg"
//   },
//   {
//     "name": "South Sudan",
//     "code": "SS",
//     "emoji": "🇸🇸",
//     "unicode": "U+1F1F8 U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SS.svg"
//   },
//   {
//     "name": "São Tomé & Príncipe",
//     "code": "ST",
//     "emoji": "🇸🇹",
//     "unicode": "U+1F1F8 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ST.svg"
//   },
//   {
//     "name": "El Salvador",
//     "code": "SV",
//     "emoji": "🇸🇻",
//     "unicode": "U+1F1F8 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SV.svg"
//   },
//   {
//     "name": "Sint Maarten",
//     "code": "SX",
//     "emoji": "🇸🇽",
//     "unicode": "U+1F1F8 U+1F1FD",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SX.svg"
//   },
//   {
//     "name": "Syria",
//     "code": "SY",
//     "emoji": "🇸🇾",
//     "unicode": "U+1F1F8 U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SY.svg"
//   },
//   {
//     "name": "Eswatini",
//     "code": "SZ",
//     "emoji": "🇸🇿",
//     "unicode": "U+1F1F8 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SZ.svg"
//   },
//   {
//     "name": "Tristan da Cunha",
//     "code": "TA",
//     "emoji": "🇹🇦",
//     "unicode": "U+1F1F9 U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TA.svg"
//   },
//   {
//     "name": "Turks & Caicos Islands",
//     "code": "TC",
//     "emoji": "🇹🇨",
//     "unicode": "U+1F1F9 U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TC.svg"
//   },
//   {
//     "name": "Chad",
//     "code": "TD",
//     "emoji": "🇹🇩",
//     "unicode": "U+1F1F9 U+1F1E9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TD.svg"
//   },
//   {
//     "name": "French Southern Territories",
//     "code": "TF",
//     "emoji": "🇹🇫",
//     "unicode": "U+1F1F9 U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TF.svg"
//   },
//   {
//     "name": "Togo",
//     "code": "TG",
//     "emoji": "🇹🇬",
//     "unicode": "U+1F1F9 U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TG.svg"
//   },
//   {
//     "name": "Thailand",
//     "code": "TH",
//     "emoji": "🇹🇭",
//     "unicode": "U+1F1F9 U+1F1ED",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TH.svg"
//   },
//   {
//     "name": "Tajikistan",
//     "code": "TJ",
//     "emoji": "🇹🇯",
//     "unicode": "U+1F1F9 U+1F1EF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TJ.svg"
//   },
//   {
//     "name": "Tokelau",
//     "code": "TK",
//     "emoji": "🇹🇰",
//     "unicode": "U+1F1F9 U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TK.svg"
//   },
//   {
//     "name": "Timor-Leste",
//     "code": "TL",
//     "emoji": "🇹🇱",
//     "unicode": "U+1F1F9 U+1F1F1",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TL.svg"
//   },
//   {
//     "name": "Turkmenistan",
//     "code": "TM",
//     "emoji": "🇹🇲",
//     "unicode": "U+1F1F9 U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TM.svg"
//   },
//   {
//     "name": "Tunisia",
//     "code": "TN",
//     "emoji": "🇹🇳",
//     "unicode": "U+1F1F9 U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TN.svg"
//   },
//   {
//     "name": "Tonga",
//     "code": "TO",
//     "emoji": "🇹🇴",
//     "unicode": "U+1F1F9 U+1F1F4",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TO.svg"
//   },
//   {
//     "name": "Turkey",
//     "code": "TR",
//     "emoji": "🇹🇷",
//     "unicode": "U+1F1F9 U+1F1F7",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TR.svg"
//   },
//   {
//     "name": "Trinidad & Tobago",
//     "code": "TT",
//     "emoji": "🇹🇹",
//     "unicode": "U+1F1F9 U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TT.svg"
//   },
//   {
//     "name": "Tuvalu",
//     "code": "TV",
//     "emoji": "🇹🇻",
//     "unicode": "U+1F1F9 U+1F1FB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TV.svg"
//   },
//   {
//     "name": "Taiwan",
//     "code": "TW",
//     "emoji": "🇹🇼",
//     "unicode": "U+1F1F9 U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TW.svg"
//   },
//   {
//     "name": "Tanzania",
//     "code": "TZ",
//     "emoji": "🇹🇿",
//     "unicode": "U+1F1F9 U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/TZ.svg"
//   },
//   {
//     "name": "Ukraine",
//     "code": "UA",
//     "emoji": "🇺🇦",
//     "unicode": "U+1F1FA U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UA.svg"
//   },
//   {
//     "name": "Uganda",
//     "code": "UG",
//     "emoji": "🇺🇬",
//     "unicode": "U+1F1FA U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UG.svg"
//   },
//   {
//     "name": "U.S. Outlying Islands",
//     "code": "UM",
//     "emoji": "🇺🇲",
//     "unicode": "U+1F1FA U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UM.svg"
//   },
//   {
//     "name": "United Nations",
//     "code": "UN",
//     "emoji": "🇺🇳",
//     "unicode": "U+1F1FA U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UN.svg"
//   },
//   {
//     "name": "United States",
//     "code": "US",
//     "emoji": "🇺🇸",
//     "unicode": "U+1F1FA U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/US.svg",
//         "isoAlpha2": "US",
// 	"isoAlpha3": "USA",
// 	"isoNumeric": 840,
// 	"currency": {
// 		"code": "USD",
// 		"name": "Dollar",
// 		"symbol": "\$"
// 	},
//   },
//   {
//     "name": "Uruguay",
//     "code": "UY",
//     "emoji": "🇺🇾",
//     "unicode": "U+1F1FA U+1F1FE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UY.svg"
//   },
//   {
//     "name": "Uzbekistan",
//     "code": "UZ",
//     "emoji": "🇺🇿",
//     "unicode": "U+1F1FA U+1F1FF",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/UZ.svg"
//   },
//   {
//     "name": "Vatican City",
//     "code": "VA",
//     "emoji": "🇻🇦",
//     "unicode": "U+1F1FB U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VA.svg"
//   },
//   {
//     "name": "St. Vincent & Grenadines",
//     "code": "VC",
//     "emoji": "🇻🇨",
//     "unicode": "U+1F1FB U+1F1E8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VC.svg"
//   },
//   {
//     "name": "Venezuela",
//     "code": "VE",
//     "emoji": "🇻🇪",
//     "unicode": "U+1F1FB U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VE.svg"
//   },
//   {
//     "name": "British Virgin Islands",
//     "code": "VG",
//     "emoji": "🇻🇬",
//     "unicode": "U+1F1FB U+1F1EC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VG.svg"
//   },
//   {
//     "name": "U.S. Virgin Islands",
//     "code": "VI",
//     "emoji": "🇻🇮",
//     "unicode": "U+1F1FB U+1F1EE",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VI.svg"
//   },
//   {
//     "name": "Vietnam",
//     "code": "VN",
//     "emoji": "🇻🇳",
//     "unicode": "U+1F1FB U+1F1F3",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VN.svg"
//   },
//   {
//     "name": "Vanuatu",
//     "code": "VU",
//     "emoji": "🇻🇺",
//     "unicode": "U+1F1FB U+1F1FA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/VU.svg"
//   },
//   {
//     "name": "Wallis & Futuna",
//     "code": "WF",
//     "emoji": "🇼🇫",
//     "unicode": "U+1F1FC U+1F1EB",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/WF.svg"
//   },
//   {
//     "name": "Samoa",
//     "code": "WS",
//     "emoji": "🇼🇸",
//     "unicode": "U+1F1FC U+1F1F8",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/WS.svg"
//   },
//   {
//     "name": "Kosovo",
//     "code": "XK",
//     "emoji": "🇽🇰",
//     "unicode": "U+1F1FD U+1F1F0",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/XK.svg"
//   },
//   {
//     "name": "Yemen",
//     "code": "YE",
//     "emoji": "🇾🇪",
//     "unicode": "U+1F1FE U+1F1EA",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/YE.svg"
//   },
//   {
//     "name": "Mayotte",
//     "code": "YT",
//     "emoji": "🇾🇹",
//     "unicode": "U+1F1FE U+1F1F9",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/YT.svg"
//   },
//   {
//     "name": "South Africa",
//     "code": "ZA",
//     "emoji": "🇿🇦",
//     "unicode": "U+1F1FF U+1F1E6",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZA.svg"
//   },
//   {
//     "name": "Zambia",
//     "code": "ZM",
//     "emoji": "🇿🇲",
//     "unicode": "U+1F1FF U+1F1F2",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZM.svg"
//   },
//   {
//     "name": "Zimbabwe",
//     "code": "ZW",
//     "emoji": "🇿🇼",
//     "unicode": "U+1F1FF U+1F1FC",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ZW.svg"
//   },
//   {
//     "name": "England",
//     "code": "ENGLAND",
//     "emoji": "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
//     "unicode": "U+1F3F4 U+E0067 U+E0062 U+E0065 U+E006E U+E0067 U+E007F",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/ENGLAND.svg"
//   },
//   {
//     "name": "Scotland",
//     "code": "SCOTLAND",
//     "emoji": "🏴󠁧󠁢󠁳󠁣󠁴󠁿",
//     "unicode": "U+1F3F4 U+E0067 U+E0062 U+E0073 U+E0063 U+E0074 U+E007F",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/SCOTLAND.svg"
//   },
//   {
//     "name": "Wales",
//     "code": "WALES",
//     "emoji": "🏴󠁧󠁢󠁷󠁬󠁳󠁿",
//     "unicode": "U+1F3F4 U+E0067 U+E0062 U+E0077 U+E006C U+E0073 U+E007F",
//     "image":
//         "https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/WALES.svg"
//   }
// ];


// // Currency Things
// // https://gist.github.com/portapipe/a28cd7a9f8aa3409af9171480efcc090
// https://gist.githubusercontent.com/ksafranski/2973986/raw/5fda5e87189b066e11c1bf80bbfbecb556cf2cc1/Common-Currency.json

// Images Crypto
// https://cryptologos.cc/
// https://github.com/ErikThiart/cryptocurrency-icons?tab=readme-ov-file

// Flags
// https://flagdownload.com/ (circle)
// https://www.countryflags.com/ (rounded)
// https://www.worldometers.info/geography/flags-of-the-world/