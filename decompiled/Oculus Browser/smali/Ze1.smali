.class public abstract LZe1;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LZe1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    const-string v2, "org.chromium.ui.touchless.TouchlessEventHandlerInternal"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZe1;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v2, LZe1;->a:LZe1;

    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1
    throw v1

    .line 4
    :catch_0
    sput-object v1, LZe1;->a:LZe1;

    if-eqz v0, :cond_2

    .line 5
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    return-void
.end method

.method public static a(LYe1;)V
    .locals 0

    return-void
.end method

.method public static a(Z)V
    .locals 0

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static a(ZZZZ)V
    .locals 0

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a(I)Z
    .locals 0

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static b(LYe1;)V
    .locals 0

    return-void
.end method
