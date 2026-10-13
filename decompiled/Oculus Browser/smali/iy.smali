.class public abstract Liy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/text/SimpleDateFormat;


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Liy;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-class v0, Liy;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Liy;->a:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Liy;->a:Ljava/text/SimpleDateFormat;

    .line 3
    :cond_0
    sget-object v1, Liy;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
