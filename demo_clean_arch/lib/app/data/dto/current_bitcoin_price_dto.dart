class CurrentBitcoinPriceDto {
  TimeDto? time;
  String? disclaimer;
  String? chartName;
  BpiDto? bpi;

  CurrentBitcoinPriceDto({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  factory CurrentBitcoinPriceDto.fromJson(Map<String, dynamic> json) =>
      CurrentBitcoinPriceDto(
        time: json["time"] != null ? TimeDto.fromJson(json["time"]) : null,
        disclaimer: json["disclaimer"],
        chartName: json["chartName"],
        bpi: json["bpi"] != null ? BpiDto.fromJson(json["bpi"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "time": time?.toJson(),
        "disclaimer": disclaimer,
        "chartName": chartName,
        "bpi": bpi?.toJson(),
      };
}

class BpiDto {
  EurDto? usd;
  EurDto? gbp;
  EurDto? eur;

  BpiDto({
    this.usd,
    this.gbp,
    this.eur,
  });

  factory BpiDto.fromJson(Map<String, dynamic> json) => BpiDto(
        usd: json["USD"] != null ? EurDto.fromJson(json["USD"]) : null,
        gbp: json["GBP"] != null ? EurDto.fromJson(json["GBP"]) : null,
        eur: json["EUR"] != null ? EurDto.fromJson(json["EUR"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "USD": usd?.toJson(),
        "GBP": gbp?.toJson(),
        "EUR": eur?.toJson(),
      };
}

class EurDto {
  String? code;
  String? symbol;
  String? rate;
  String? description;
  double? rateFloat;

  EurDto({
    this.code,
    this.symbol,
    this.rate,
    this.description,
    this.rateFloat,
  });

  factory EurDto.fromJson(Map<String, dynamic> json) => EurDto(
        code: json["code"],
        symbol: json["symbol"],
        rate: json["rate"],
        description: json["description"],
        rateFloat: json["rate_float"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "symbol": symbol,
        "rate": rate,
        "description": description,
        "rate_float": rateFloat,
      };
}

class TimeDto {
  String? updated;
  DateTime? updatedIso;
  String? updateduk;

  TimeDto({
    this.updated,
    this.updatedIso,
    this.updateduk,
  });

  factory TimeDto.fromJson(Map<String, dynamic> json) => TimeDto(
        updated: json["updated"],
        updatedIso: json["updatedISO"] != null
            ? DateTime.parse(json["updatedISO"])
            : null,
        updateduk: json["updateduk"],
      );

  Map<String, dynamic> toJson() => {
        "updated": updated,
        "updatedISO": updatedIso?.toIso8601String(),
        "updateduk": updateduk,
      };
}
