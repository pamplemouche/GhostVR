.class Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;
.super Ljava/lang/Object;
.source "InstallerServiceUtil.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->checkAppInstallRequestDuplicate(Ljava/lang/String;Ljava/lang/String;JJ)Z
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

.field final synthetic val$baseVersion:J

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targetVersion:J


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->this$0:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$itemId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$baseVersion:J

    iput-wide p6, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$targetVersion:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
    .locals 4
    .param p1    # Lcom/oculus/appmanager/info/ApkUpdateInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$packageName:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->updateType:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;

    .line 113
    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$itemId:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->itemId:Ljava/lang/String;

    .line 114
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$baseVersion:J

    iget-wide v2, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->baseVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->val$targetVersion:J

    iget-wide v2, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->targetVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->isFinal()Z

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
    .line 108
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil$2;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
