.class public abstract Lon0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/os/Bundle;)Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "PowerConnected"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "BatteryPercentage"

    const/16 v3, 0x64

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "UnmeteredNetwork"

    .line 3
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 4
    new-instance v0, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;

    invoke-direct {v0, v1, v2, p0}, Lorg/chromium/chrome/browser/offlinepages/TriggerConditions;-><init>(ZIZ)V

    return-object v0
.end method
