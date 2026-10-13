.class public Lcom/facebook/rti/common/util/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

.field private final mServicesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->build(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mServicesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method private getService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mServicesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getSystemService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/facebook/rti/common/util/SystemServiceManager;->mServicesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x0

    move v1, v2

    .line 31
    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/common/util/SystemServiceManager;->getService(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move v1, v3

    goto :goto_0

    .line 34
    :cond_0
    if-nez v0, :cond_1

    .line 35
    const-string v1, "SystemServiceManager"

    const-string v3, "Cannot get system service after MAX_RETRIES: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_1
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    return-object v0
.end method
