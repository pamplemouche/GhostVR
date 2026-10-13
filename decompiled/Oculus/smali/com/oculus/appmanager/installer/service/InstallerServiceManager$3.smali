.class Lcom/oculus/appmanager/installer/service/InstallerServiceManager$3;
.super Ljava/lang/Object;
.source "InstallerServiceManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->inProgressUpdatesExceedLimit(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

.field final synthetic val$updatesInTree:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/service/InstallerServiceManager;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$3;->this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$3;->val$updatesInTree:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
    .locals 5
    .param p1    # Lcom/oculus/appmanager/info/ApkUpdateInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    if-nez p1, :cond_0

    .line 603
    :goto_0
    return v2

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    sget-object v3, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->QUEUED_DOWNLOAD:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 601
    :goto_1
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v3

    sget-object v4, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$3;->val$updatesInTree:Ljava/util/Set;

    .line 602
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 603
    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 599
    goto :goto_1

    :cond_2
    move v3, v2

    .line 602
    goto :goto_2

    :cond_3
    move v1, v2

    .line 603
    goto :goto_3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 591
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$3;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
