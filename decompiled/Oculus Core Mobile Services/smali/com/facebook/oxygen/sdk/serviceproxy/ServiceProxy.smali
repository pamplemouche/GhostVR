.class public abstract Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ServiceProxyFuture;,
        Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mName:Ljava/lang/String;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mServiceComponentName:Landroid/content/ComponentName;

    .line 52
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mContext:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mServiceComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private diagnoseService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 111
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 113
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    .line 114
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v3, "Package %s is disabled."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 117
    check-cast v0, Ljava/util/Locale;

    const-string v1, "Package %s is not present."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 123
    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v2, "Service %s is disabled."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    check-cast v1, Ljava/util/Locale;

    const-string v0, "Service %s is not present."

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    check-cast v1, Ljava/util/Locale;

    const-string v0, "Package %s is present and enabled; service %s is present and enabled."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p1, v3, v7

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected callService(Lcom/google/common/util/concurrent/SettableFuture;Landroid/content/ServiceConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<*>;",
            "Landroid/content/ServiceConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->createServiceIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->getBindServiceFlags()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->diagnoseService(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v3, "Failed to bind to %s service: %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 95
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    .line 91
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method protected createServiceIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method protected getBindServiceFlags()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->mServiceComponentName:Landroid/content/ComponentName;

    return-object v0
.end method
