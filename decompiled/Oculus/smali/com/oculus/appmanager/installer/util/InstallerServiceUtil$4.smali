.class Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;
.super Ljava/lang/Object;
.source "InstallerServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->startServiceForCancelDownloadAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    .line 359
    invoke-static {v0}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->access$000(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;)Lcom/oculus/appmanager/info/InfoUtils;

    move-result-object v0

    new-instance v1, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;

    invoke-direct {v1, p0}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4$1;-><init>(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;)V

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/info/InfoUtils;->findUpdates(Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    .line 372
    iget-object v2, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$4;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    invoke-static {v2}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->access$100(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;)Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;->cancel(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method
