.class public final Lorg/chromium/chrome/browser/background_sync/GooglePlayServicesChecker;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static shouldDisableBackgroundSync()Z
    .locals 5

    .line 1
    invoke-static {}, Lja0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "PlayServicesChecker"

    const-string v4, "Disabling Background Sync because Play Services is not up to date."

    .line 2
    invoke-static {v3, v4, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v0, "BackgroundSync.LaunchTask.PlayServicesAvailable"

    .line 3
    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    xor-int/lit8 v0, v1, 0x1

    return v0
.end method
