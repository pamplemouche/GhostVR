.class Lcom/oculus/appmanager/installer/service/InstallerServiceManager$4;
.super Ljava/lang/Object;
.source "InstallerServiceManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->getTransientUpdates()Ljava/util/List;
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


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/service/InstallerServiceManager;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$4;->this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

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
    .line 642
    if-eqz p1, :cond_1

    .line 643
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isFinal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isInitial()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 645
    :goto_0
    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "found ApkUpdate(%s) in state(%s)"

    iget-object v3, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    :cond_0
    return v0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 639
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$4;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
