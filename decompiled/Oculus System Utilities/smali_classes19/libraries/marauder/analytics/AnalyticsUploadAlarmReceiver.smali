.class public Llibraries/marauder/analytics/AnalyticsUploadAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsUploadAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    invoke-static {}, Llibraries/marauder/analytics/Analytics;->getLogger()Llibraries/marauder/analytics/AnalyticsLogger;

    move-result-object v0

    invoke-interface {v0}, Llibraries/marauder/analytics/AnalyticsLogger;->queueUpload()V

    .line 13
    return-void
.end method
