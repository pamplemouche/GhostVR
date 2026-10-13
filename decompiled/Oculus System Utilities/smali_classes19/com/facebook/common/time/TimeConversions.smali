.class public Lcom/facebook/common/time/TimeConversions;
.super Ljava/lang/Object;
.source "TimeConversions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertMillisecondsRounding(JJ)J
    .locals 6
    .param p0, "timeMs"    # J
    .param p2, "units"    # J

    .prologue
    .line 89
    long-to-double v2, p0

    long-to-double v4, p2

    div-double v0, v2, v4

    .line 90
    .local v0, "unitsAsDouble":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    return-wide v2
.end method

.method private static convertMillisecondsRoundingUp(JJ)J
    .locals 6
    .param p0, "timeMs"    # J
    .param p2, "units"    # J

    .prologue
    .line 78
    long-to-double v2, p0

    long-to-double v4, p2

    div-double v0, v2, v4

    .line 79
    .local v0, "unitsAsDouble":D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public static microsecondsToMillisecondsRounding(J)J
    .locals 4
    .param p0, "microseconds"    # J

    .prologue
    .line 123
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static millisecondsToDays(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 41
    const-wide/32 v0, 0x5265c00

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToDaysRounding(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 51
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRounding(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisecondsToDaysRoundingUp(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 46
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRoundingUp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisecondsToHours(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 17
    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToHoursRounding(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 27
    const-wide/32 v0, 0x36ee80

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRounding(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisecondsToHoursRoundingUp(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 22
    const-wide/32 v0, 0x36ee80

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRoundingUp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisecondsToMinutes(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 32
    const-wide/32 v0, 0xea60

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToMinutesRoundingUp(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 37
    const-wide/32 v0, 0xea60

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRoundingUp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static millisecondsToMonths(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 59
    const-wide v0, 0x9a7ec800L

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToSeconds(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToSecondsAsDouble(J)D
    .locals 4
    .param p0, "timeMs"    # J

    .prologue
    .line 100
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static millisecondsToWeeks(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 55
    const-wide/32 v0, 0x240c8400

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToYears(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 63
    const-wide v0, 0x757b12c00L

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static millisecondsToYearsRoundingUp(J)J
    .locals 2
    .param p0, "timeMs"    # J

    .prologue
    .line 68
    const-wide v0, 0x757b12c00L

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/time/TimeConversions;->convertMillisecondsRoundingUp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static minutesToMillieconds(J)J
    .locals 2
    .param p0, "timeMinutes"    # J

    .prologue
    .line 115
    const-wide/32 v0, 0xea60

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static minutesToSeconds(J)J
    .locals 2
    .param p0, "timeMinutes"    # J

    .prologue
    .line 105
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static nanosecondsToMillisecondsRounded(J)J
    .locals 4
    .param p0, "nanos"    # J

    .prologue
    .line 119
    const-wide/32 v0, 0x7a120

    add-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static secondsToMilliseconds(J)J
    .locals 2
    .param p0, "timeSeconds"    # J

    .prologue
    .line 110
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    return-wide v0
.end method
