.class public Lja0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lja0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lja0;

    invoke-direct {v0}, Lja0;-><init>()V

    .line 3
    sput-object v0, Lja0;->a:Lja0;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 22
    sget-object v0, Lja0;->a:Lja0;

    new-instance v1, Lma0;

    invoke-direct {v1}, Lma0;-><init>()V

    invoke-virtual {v0, v1}, Lja0;->a(Lna0;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3

    .line 23
    invoke-static {}, LqU;->e()LqU;

    move-result-object v0

    .line 24
    :try_start_0
    sget-object v1, Ldm;->d:Ldm;

    .line 25
    sget v2, Lem;->a:I

    invoke-virtual {v1, p1, v2}, Lem;->a(Landroid/content/Context;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0}, LqU;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 28
    :try_start_2
    invoke-virtual {v0}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 29
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    throw v1
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 10

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 5
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v7, v3, v5

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_6

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p2, :cond_5

    const-string v6, "ExternalAuthUtils"

    .line 7
    :try_start_0
    invoke-virtual {p1, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 8
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8}, Ljava/lang/SecurityException;-><init>()V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v8, "Caller with package name "

    const-string v9, " is not in the system build"

    .line 9
    invoke-static {v8, v7, v9}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    const-string v8, "Package with name "

    const-string v9, " not found"

    .line 10
    invoke-static {v8, v7, v9}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_5

    :goto_5
    return v1

    :cond_5
    const/4 v6, 0x1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return v6
.end method

.method public a(Lna0;)Z
    .locals 5

    .line 11
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "disable-google-play-services-for-testing"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 12
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {p0, v0}, Lja0;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_1
    sget-object v3, Ldm;->d:Ldm;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 15
    invoke-static {v2}, Lkm;->a(I)Ljava/lang/String;

    .line 16
    sget-object v3, Ldm;->d:Ldm;

    if-eqz v3, :cond_3

    .line 17
    invoke-static {v2}, Lkm;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    new-instance v3, Lia0;

    invoke-direct {v3, p0, p1, v0, v2}, Lia0;-><init>(Lja0;Lna0;Landroid/content/Context;I)V

    .line 19
    sget-object p1, LZ01;->a:LFW;

    invoke-static {p1, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    :cond_2
    return v1

    .line 20
    :cond_3
    throw v4

    .line 21
    :cond_4
    throw v4
.end method
