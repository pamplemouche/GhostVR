.class public abstract LIO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LHO0;

.field public static b:Z


# direct methods
.method public static a()V
    .locals 2

    .line 1
    sget-boolean v0, LIO0;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "org.chromium.chrome.browser.vr.ArDelegateImpl"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHO0;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v1, LIO0;->a:LHO0;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    sput-boolean v0, LIO0;->b:Z

    throw v1

    :catch_0
    :goto_0
    sput-boolean v0, LIO0;->b:Z

    return-void
.end method
