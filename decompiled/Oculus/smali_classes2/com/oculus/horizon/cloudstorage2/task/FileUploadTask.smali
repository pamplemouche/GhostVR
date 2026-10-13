.class public Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "FileUploadTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;,
        Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
        ">;"
    }
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mFile:Ljava/io/File;

.field private mProgressListener:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Ljava/io/File;Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Ljava/io/File;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation

        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p5}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 49
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 56
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mFile:Ljava/io/File;

    .line 57
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mSha1:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mProgressListener:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mProgressListener:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 70
    new-instance v2, Lcom/facebook/fbuploader/Content;

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mFile:Ljava/io/File;

    const-string v3, "octet-stream"

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->mSha1:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/facebook/fbuploader/Content;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/facebook/fbuploader/Config$Builder;

    sget-object v3, Lcom/facebook/fbuploader/Config$Namespace;->OCULUS_CLOUD_STORAGE:Lcom/facebook/fbuploader/Config$Namespace;

    invoke-direct {v0, v3}, Lcom/facebook/fbuploader/Config$Builder;-><init>(Lcom/facebook/fbuploader/Config$Namespace;)V

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$Builder;->build()Lcom/facebook/fbuploader/Config;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;

    invoke-direct {v4, p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;Lbolts/TaskCompletionSource;)V

    .line 107
    const/4 v0, 0x0

    :try_start_0
    sget v5, Lcom/oculus/uploader/UploaderModule$UL_id;->$ul_$xXXcom_facebook_fbuploader_FbUploaderImpl$xXXBINDING_ID:I

    iget-object v6, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v5, v6}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/FbUploaderImpl;

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/fbuploader/FbUploaderImpl;->startAsyncUploadJob(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;)Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;
    :try_end_0
    .catch Lcom/facebook/fbuploader/UploadFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1
.end method
