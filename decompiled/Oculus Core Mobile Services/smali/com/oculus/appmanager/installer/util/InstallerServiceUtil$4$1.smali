.class Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;
.super Ljava/lang/Object;
.source "InstallerServiceUtil.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->run()V
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
.field final synthetic this$1:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;->this$1:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;

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
    .line 363
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;->this$1:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;

    iget-object v0, v0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    .line 364
    invoke-static {v0}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->access$000(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;)Lcom/oculus/appmanager/info/InfoUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/appmanager/info/InfoUtils;->hasParentUpdate(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;->this$1:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;

    iget-object v1, v1, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->val$packageName:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
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
    .line 360
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
