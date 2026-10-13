.class public Lcom/facebook/common/time/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final TIME_UNITS:[J

.field private static final TIME_UNITS_ABBR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 19
    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS:[J

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "h"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "s"

    aput-object v2, v0, v1

    const-string v1, "ms"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS_ABBR:[Ljava/lang/String;

    return-void

    .line 19
    :array_0
    .array-data 8
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiToUtcTime(J)J
    .locals 4
    .param p0, "apiTime"    # J

    .prologue
    .line 42
    const-wide/16 v2, 0x3e8

    mul-long v0, p0, v2

    .line 43
    .local v0, "apiTimeMs":J
    const-string v2, "PST"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public static minutesToMilliseconds(I)J
    .locals 4
    .param p0, "minutes"    # I

    .prologue
    .line 54
    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static nanoTime()J
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toHumanReadableTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "milliseconds"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x20

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v4, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS:[J

    array-length v1, v5

    .line 84
    .local v1, "len":I
    const/4 v0, 0x0

    .line 85
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 86
    sget-object v5, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS:[J

    aget-wide v6, v5, v0

    div-long v2, p0, v6

    .line 87
    .local v2, "quotient":J
    cmp-long v5, v2, v10

    if-lez v5, :cond_1

    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 89
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS_ABBR:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v5, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS:[J

    aget-wide v6, v5, v0

    rem-long/2addr p0, v6

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "quotient":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 96
    cmp-long v5, p0, v10

    if-lez v5, :cond_3

    .line 97
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS_ABBR:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 100
    :cond_4
    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/facebook/common/time/TimeUtil;->TIME_UNITS_ABBR:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static utcToApiTime(J)J
    .locals 4
    .param p0, "utcTime"    # J

    .prologue
    .line 30
    const-string v2, "PST"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long v0, p0, v2

    .line 31
    .local v0, "apiTimeMs":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method public static whenFromNow(JJ)Ljava/lang/String;
    .locals 6
    .param p0, "whenMillis"    # J
    .param p2, "nowMillis"    # J

    .prologue
    .line 65
    cmp-long v4, p0, p2

    if-nez v4, :cond_0

    .line 66
    const-string v4, "now"

    .line 72
    :goto_0
    return-object v4

    .line 68
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, "sb":Ljava/lang/StringBuilder;
    cmp-long v4, p0, p2

    if-lez v4, :cond_1

    const-string v2, "later"

    .line 70
    .local v2, "lastWord":Ljava/lang/String;
    :goto_1
    sub-long v4, p0, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 71
    .local v0, "diff":J
    invoke-static {v0, v1}, Lcom/facebook/common/time/TimeUtil;->toHumanReadableTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 69
    .end local v0    # "diff":J
    .end local v2    # "lastWord":Ljava/lang/String;
    :cond_1
    const-string v2, "ago"

    goto :goto_1
.end method
