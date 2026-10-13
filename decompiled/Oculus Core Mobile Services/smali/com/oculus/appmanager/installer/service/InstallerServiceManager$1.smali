.class Lcom/oculus/appmanager/installer/service/InstallerServiceManager$1;
.super Ljava/lang/Object;
.source "InstallerServiceManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->canUpdateContinue(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
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
    .line 263
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$1;->this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
    .locals 3
    .param p1    # Lcom/oculus/appmanager/info/ApkUpdateInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v1

    .line 270
    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->CANCELED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->FAILED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$1;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
