.class Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper$2;
.super Ljava/lang/Object;
.source "InstallerConsistencyHelper.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;->performTimeOutCheck(Lcom/oculus/appmanager/info/ApkUpdateInfo;)V
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
.field final synthetic this$0:Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper$2;->this$0:Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper;

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
    .line 410
    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->VERIFIED:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    if-ne v0, v1, :cond_0

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
    .line 407
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/service/InstallerConsistencyHelper$2;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
