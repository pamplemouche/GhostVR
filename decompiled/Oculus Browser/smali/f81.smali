.class public Lf81;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile e:Lf81;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:Ljava/lang/String;

.field public volatile c:Ljava/lang/String;

.field public d:Le81;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf81;
    .locals 3

    .line 1
    sget-object v0, Lf81;->e:Lf81;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lf81;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lf81;->e:Lf81;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lf81;

    invoke-direct {v0}, Lf81;-><init>()V

    .line 5
    new-instance v2, Lc81;

    invoke-direct {v2, v0}, Lc81;-><init>(Lf81;)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 6
    sput-object v0, Lf81;->e:Lf81;

    .line 7
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method
