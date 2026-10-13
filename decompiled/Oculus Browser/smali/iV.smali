.class public abstract LiV;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2
    :try_start_1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "org.chromium.base.process_launcher.BindServiceInternal"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "doBindServiceQ"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Intent;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/content/ServiceConnection;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Ljava/util/concurrent/Executor;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const-class v11, Ljava/lang/String;

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v4, "updateServiceGroupQ"

    new-array v5, v10, [Ljava/lang/Class;

    .line 5
    const-class v10, Landroid/content/Context;

    aput-object v10, v5, v6

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v9

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {v1}, LqU;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v0

    .line 7
    :goto_1
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v4

    .line 8
    :try_start_5
    invoke-virtual {v1}, LqU;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 9
    :try_start_6
    sget-object v5, LRB;->a:LLB;

    invoke-virtual {v5, v2, v1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 10
    :goto_2
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v1

    move-object v2, v0

    move-object v0, v3

    goto :goto_3

    :catch_0
    move-object v2, v0

    move-object v0, v3

    goto :goto_4

    :catchall_6
    move-exception v1

    move-object v2, v0

    .line 11
    :goto_3
    sput-object v0, LiV;->a:Ljava/lang/reflect/Method;

    .line 12
    sput-object v2, LiV;->b:Ljava/lang/reflect/Method;

    throw v1

    :catch_1
    move-object v2, v0

    .line 13
    :catch_2
    :goto_4
    sput-object v0, LiV;->a:Ljava/lang/reflect/Method;

    .line 14
    sput-object v2, LiV;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, LiV;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, LiV;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z
    .locals 9

    .line 12
    sget-object v0, LiV;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez v0, :cond_0

    .line 13
    const-class v0, Landroid/content/Context;

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Intent;

    aput-object v8, v7, v5

    const-class v8, Landroid/content/ServiceConnection;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v2

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v7, v1

    const-string v8, "bindServiceAsUser"

    .line 14
    invoke-virtual {v0, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, LiV;->c:Ljava/lang/reflect/Method;

    .line 15
    :cond_0
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, LiV;->c:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object p2, v6, v4

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    aput-object p4, v6, v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    aput-object p1, v6, v1

    .line 19
    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z
    .locals 3

    .line 2
    invoke-static {}, LiV;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object p4, LiV;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    aput-object p5, v1, p0

    const/4 p0, 0x5

    aput-object p6, v1, p0

    .line 5
    invoke-virtual {p4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_0
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x18

    if-ge p5, p6, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0

    .line 9
    :cond_1
    :try_start_1
    invoke-static {p0, p1, p2, p3, p4}, LiV;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p4

    .line 10
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    :catch_2
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
