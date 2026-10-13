.class Lcom/oculus/installer/service/AssetManager$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/service/AssetManager;->findRunningUpdatesForAssets(Lcom/oculus/library/model/App;Ljava/util/Collection;)Ljava/util/Map;
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
.field final synthetic this$0:Lcom/oculus/installer/service/AssetManager;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$idSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/oculus/installer/service/AssetManager;Lcom/oculus/library/model/App;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/oculus/installer/service/AssetManager$1;->this$0:Lcom/oculus/installer/service/AssetManager;

    iput-object p2, p0, Lcom/oculus/installer/service/AssetManager$1;->val$app:Lcom/oculus/library/model/App;

    iput-object p3, p0, Lcom/oculus/installer/service/AssetManager$1;->val$idSet:Ljava/util/Set;

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
    .line 471
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 472
    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isAsset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/installer/service/AssetManager$1;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/installer/service/AssetManager$1;->val$idSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->itemId:Ljava/lang/String;

    .line 474
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
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
    .line 468
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/installer/service/AssetManager$1;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
