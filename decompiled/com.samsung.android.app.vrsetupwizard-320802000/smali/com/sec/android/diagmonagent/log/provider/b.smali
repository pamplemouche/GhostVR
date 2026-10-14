.class public Lcom/sec/android/diagmonagent/log/provider/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = "DIAGMON_SDK"

.field private static b:Lcom/sec/android/diagmonagent/log/provider/b;

.field private static c:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field private static d:Lcom/sec/android/diagmonagent/log/provider/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sec/android/diagmonagent/log/provider/a;)Lcom/sec/android/diagmonagent/log/provider/b;
    .locals 2

    const-class v0, Lcom/sec/android/diagmonagent/log/provider/b;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/b;->b(Lcom/sec/android/diagmonagent/log/provider/a;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string v1, "DiagMonConfig can\'t be set"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/b;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/b;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/b;->b:Lcom/sec/android/diagmonagent/log/provider/b;

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    new-instance v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/b;->c:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/b;->c:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-virtual {v1, p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->a(Lcom/sec/android/diagmonagent/log/provider/a;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->b:Lcom/sec/android/diagmonagent/log/provider/b;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1"

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/b;->b(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/e;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/e;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->b:Lcom/sec/android/diagmonagent/log/provider/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "DiagMonSDK is null"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string v2, "DiagMonSDK is ok"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "not agreed"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agreement is ok - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/a;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "serviceId is empty"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceId is ok - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v3}, Lcom/sec/android/diagmonagent/log/provider/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "No log List"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logList size is ok - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-virtual {v4}, Lcom/sec/android/diagmonagent/log/provider/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "ResultCode is empty"

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCode is ok - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/b;->d:Lcom/sec/android/diagmonagent/log/provider/a;

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/provider/d;->a(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/a;Lcom/sec/android/diagmonagent/log/provider/e;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string p1, "SendBroadcast"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected static b(Lcom/sec/android/diagmonagent/log/provider/a;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string v1, "Configuration is null"

    :goto_0
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string v1, "ServiceId is empty"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/a;->a()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/b;->a:Ljava/lang/String;

    const-string v1, "Not Agreed"

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
