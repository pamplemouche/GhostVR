.class public Llibraries/marauder/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static sLogger:Llibraries/marauder/analytics/AnalyticsLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Llibraries/marauder/analytics/AnalyticsLogger;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Llibraries/marauder/analytics/Analytics;->sLogger:Llibraries/marauder/analytics/AnalyticsLogger;

    return-object v0
.end method

.method public static setLogger(Llibraries/marauder/analytics/AnalyticsLogger;)V
    .locals 0
    .param p0, "logger"    # Llibraries/marauder/analytics/AnalyticsLogger;

    .prologue
    .line 10
    sput-object p0, Llibraries/marauder/analytics/Analytics;->sLogger:Llibraries/marauder/analytics/AnalyticsLogger;

    .line 11
    return-void
.end method
