.class Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$1;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$000(Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v3

    .line 84
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 85
    iget-object v0, v5, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->isSyncing(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "[%s] Application status is %s, resetting."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v5, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v8, 0x1

    iget-object v9, v5, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 90
    invoke-virtual {v9}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 86
    invoke-static {v0, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$000(Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v6

    new-instance v7, Lcom/oculus/library/model/App$Builder;

    invoke-direct {v7, v5}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    iget-object v0, v5, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    sget-object v8, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v0, v8, :cond_1

    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;

    .line 93
    :goto_1
    invoke-virtual {v7, v0}, Lcom/oculus/library/model/App$Builder;->withCloudStorageStatus(Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    .line 91
    invoke-virtual {v6, v0}, Lcom/oculus/libraryapi/OVRLibrary;->save(Lcom/oculus/library/model/App;)V

    .line 100
    iget-object v0, v5, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    sget-object v6, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNC_REQUIRED:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v0, v6, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->access$200(Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v5, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->scheduleUpload(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lcom/oculus/library/model/CloudStorageStatus;->ENABLED:Lcom/oculus/library/model/CloudStorageStatus;

    goto :goto_1

    .line 105
    :cond_2
    return-void
.end method
