.class Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;
.super Ljava/lang/Object;
.source "InstallerServiceDownloadHelper.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper;->onDownloadComplete(Lcom/oculus/downloader/model/DownloadInfo;)V
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
.field final synthetic this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper;

.field final synthetic val$info:Lcom/oculus/downloader/model/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper;Lcom/oculus/downloader/model/DownloadInfo;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper;

    iput-object p2, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z
    .locals 6
    .param p1    # Lcom/oculus/appmanager/info/ApkUpdateInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    if-nez p1, :cond_0

    .line 319
    :goto_0
    return v3

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-object v0, v0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 311
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-object v0, v0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 312
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-object v0, v0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 313
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-object v0, v0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 315
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-object v0, v0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 317
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getDownloadId()J

    move-result-wide v0

    iget-object v4, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->val$info:Lcom/oculus/downloader/model/DownloadInfo;

    iget-wide v4, v4, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 319
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->DOWNLOADING:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    move v3, v2

    goto :goto_0

    :cond_3
    move v1, v3

    .line 313
    goto :goto_1

    :cond_4
    move v0, v3

    .line 315
    goto :goto_2

    :cond_5
    move v2, v3

    .line 319
    goto :goto_3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/installer/service/InstallerServiceDownloadHelper$2;->apply(Lcom/oculus/appmanager/info/ApkUpdateInfo;)Z

    move-result v0

    return v0
.end method
