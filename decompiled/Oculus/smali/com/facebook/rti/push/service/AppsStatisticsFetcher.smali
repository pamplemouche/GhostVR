.class public Lcom/facebook/rti/push/service/AppsStatisticsFetcher;
.super Ljava/lang/Object;
.source "AppsStatisticsFetcher.java"

# interfaces
.implements Lcom/facebook/rti/push/service/FbnsInternalStatesHelper;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/facebook/rti/push/service/FbnsService;->dumpCompatibleApps(Ljava/util/List;Ljava/util/List;)V

    .line 22
    const-string/jumbo v3, "valid_compatible_apps"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 23
    const-string v1, "enabled_compatible_apps"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p1, v1}, Lcom/facebook/rti/push/service/FbnsService;->dumpRegisteredApps(Ljava/util/ArrayList;)V

    .line 28
    const-string/jumbo v2, "registered_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    sget-object v1, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;->TAG:Ljava/lang/String;

    const-string v2, "Got apps statistics: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-object v0
.end method

.method public doSet(Lcom/facebook/rti/push/service/FbnsService;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/rti/push/service/AppsStatisticsFetcher;->TAG:Ljava/lang/String;

    const-string v1, "not implemented for AppsStatisticsFetcher"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not implemented for AppsStatisticsFetcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
