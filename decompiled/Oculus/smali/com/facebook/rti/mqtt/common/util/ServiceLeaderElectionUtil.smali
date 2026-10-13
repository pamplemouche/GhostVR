.class public Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;
.super Ljava/lang/Object;
.source "ServiceLeaderElectionUtil.java"


# static fields
.field private static final APPS_COMPATIBLE_TO_PRELOADED_FBNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEADER_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->LEADER_APPS:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil$2;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->APPS_COMPATIBLE_TO_PRELOADED_FBNS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompatibleApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->APPS_COMPATIBLE_TO_PRELOADED_FBNS:Ljava/util/List;

    return-object v0
.end method

.method public static getLeaderPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->LEADER_APPS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->NO_REPORT:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    invoke-static {p0, v0, v2}, Lcom/facebook/rti/common/util/PackageInfoUtil;->isTrustedApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isCompatibleApp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->APPS_COMPATIBLE_TO_PRELOADED_FBNS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCompatibleAppOrService(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->APPS_COMPATIBLE_TO_PRELOADED_FBNS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->LEADER_APPS:Ljava/util/List;

    .line 126
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServicePreLoadedPackage(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServicePreLoadedPackage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "com.facebook.services.dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.facebook.services"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
