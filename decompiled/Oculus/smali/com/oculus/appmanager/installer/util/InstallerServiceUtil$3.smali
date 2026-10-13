.class Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;
.super Ljava/lang/Object;
.source "InstallerServiceUtil.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->startServiceForCancelAssetDownloadAction(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/SettableFuture;
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
.field final synthetic this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

.field final synthetic val$assetId:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->val$assetId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
    .locals 2
    .param p1    # Lcom/oculus/appmanager/info/ApkUpdateInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 325
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 326
    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isAsset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->val$packageName:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->itemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->val$assetId:Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    .line 322
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$3;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
