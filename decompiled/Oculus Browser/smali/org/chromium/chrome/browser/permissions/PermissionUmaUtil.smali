.class public Lorg/chromium/chrome/browser/permissions/PermissionUmaUtil;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static recordWithBatteryBucket(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "level"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    .line 5
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    int-to-double v1, v2

    mul-double v1, v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 6
    invoke-static {p0, v0}, LfV;->d(Ljava/lang/String;I)V

    return-void
.end method
