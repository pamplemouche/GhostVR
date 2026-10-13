.class public Lorg/chromium/components/invalidation/InvalidationService;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(J)Lorg/chromium/components/invalidation/InvalidationService;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, Lorg/chromium/components/invalidation/InvalidationService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/invalidation/InvalidationService;-><init>(J)V

    return-object v0
.end method

.method private getInvalidatorClientId()[B
    .locals 1

    .line 1
    invoke-static {}, LsV0;->b()LsV0;

    move-result-object v0

    invoke-virtual {v0}, LsV0;->a()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setRegisteredObjectIds([I[Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "sync_acct_name"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sync_acct_type"

    .line 3
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v2

    .line 5
    :goto_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_8

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 9
    aget v6, p1, v5

    const/16 v7, 0x3ec

    if-eq v6, v7, :cond_2

    .line 10
    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    aget-object v6, p2, v5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "org.chromium.components.sync.notifier.ACTION_REGISTER_TYPES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "registered_object_sources"

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "registered_object_names"

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "account"

    .line 15
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 17
    sget-object v0, LNT0;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cr_invalidation"

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 18
    sget-object v0, LNT0;->w:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    sget-object v5, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 21
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 22
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 23
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "ipc.invalidation.ticl.listener_service_class"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 24
    const-class v5, LNT0;

    goto :goto_4

    .line 25
    :cond_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 26
    const-class v6, LNT0;

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_3
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "Unable to find registered client service"

    .line 28
    invoke-static {v1, v5, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_5
    const-class v5, LNT0;

    .line 30
    :goto_4
    invoke-virtual {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    :cond_6
    sget-object v0, LNT0;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_7

    .line 34
    :try_start_1
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "Failed to start service from exception: "

    .line 36
    invoke-static {v1, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 37
    :cond_7
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_5
    return-void

    .line 39
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "objectSources and objectNames must have the same length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
