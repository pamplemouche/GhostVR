.class public LmU0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LmU0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LmU0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LmU0;->a:LmU0;

    if-nez v0, :cond_0

    new-instance v0, LmU0;

    invoke-direct {v0}, LmU0;-><init>()V

    sput-object v0, LmU0;->a:LmU0;

    .line 3
    :cond_0
    sget-object v0, LmU0;->a:LmU0;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Ldj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcj; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr.AccountIdProvider"

    const-string v1, "AccountIdProvider.getAccountId"

    .line 3
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Z
    .locals 4

    .line 4
    invoke-static {}, LqU;->e()LqU;

    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Ldm;->d:Ldm;

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v2}, Ldm;->a(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, LqU;->close()V

    return v1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 10
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 11
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    throw v2
.end method
