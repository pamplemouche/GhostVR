.class public final Lcom/facebook/fbuploader/FbUploaderImpl;
.super Ljava/lang/Object;
.source "FbUploaderImpl.java"

# interfaces
.implements Lcom/facebook/fbuploader/FbUploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;,
        Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;
    }
.end annotation


# instance fields
.field private mJobFactory:Lcom/facebook/fbuploader/UploadJobFactory;

.field private mListenersToHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;",
            "Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/HttpRequestExecutor;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/fbuploader/UploadJobFactory;

    invoke-direct {v0, p1}, Lcom/facebook/fbuploader/UploadJobFactory;-><init>(Lcom/facebook/fbuploader/HttpRequestExecutor;)V

    invoke-direct {p0, v0}, Lcom/facebook/fbuploader/FbUploaderImpl;-><init>(Lcom/facebook/fbuploader/UploadJobFactory;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fbuploader/UploadJobFactory;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mJobFactory:Lcom/facebook/fbuploader/UploadJobFactory;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadFailureException;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/facebook/fbuploader/FbUploaderImpl;->jobFailed(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadFailureException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/FbUploaderImpl;->jobCancelled(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadResult;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/facebook/fbuploader/FbUploaderImpl;->jobFinishedWithResult(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadResult;)V

    return-void
.end method

.method private jobCancelled(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;)V
    .locals 6

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;

    .line 200
    if-eqz v0, :cond_0

    .line 201
    check-cast v0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;

    check-cast v0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$500(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;)Lcom/facebook/fbuploader/UploadJob;

    move-result-object v2

    .line 202
    new-instance v0, Lcom/facebook/fbuploader/UploadFailureException;

    const-string v1, "Cancellation"

    .line 204
    invoke-interface {v2}, Lcom/facebook/fbuploader/UploadJob;->getBytesUploaded()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;JZLjava/lang/Exception;)V

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/facebook/fbuploader/FbUploaderImpl;->jobFailed(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadFailureException;)V

    .line 206
    :cond_0
    return-void
.end method

.method private jobFailed(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadFailureException;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;

    .line 210
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 211
    check-cast v1, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;

    .line 212
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$802(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadResult;)Lcom/facebook/fbuploader/UploadResult;

    .line 213
    invoke-static {v1, p2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$702(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadFailureException;)Lcom/facebook/fbuploader/UploadFailureException;

    .line 214
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$602(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Z)Z

    .line 215
    monitor-enter v0

    .line 216
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    return-void

    .line 217
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private jobFinishedWithResult(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadResult;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;

    .line 186
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 187
    check-cast v1, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;

    .line 188
    invoke-static {v1, p2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$802(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadResult;)Lcom/facebook/fbuploader/UploadResult;

    .line 189
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$702(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Lcom/facebook/fbuploader/UploadFailureException;)Lcom/facebook/fbuploader/UploadFailureException;

    .line 190
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$602(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;Z)Z

    .line 191
    monitor-enter v0

    .line 192
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-void

    .line 193
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public startAsyncUploadJob(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;)Lcom/facebook/fbuploader/FbUploader$FbUploadJobHandle;
    .locals 5
    .param p3    # Lcom/facebook/fbuploader/Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/fbuploader/UploadFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/facebook/fbuploader/Content;->getFileKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/fbuploader/Content;->getFileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/facebook/fbuploader/UploadFailureException;

    const-string v1, "Empty file key"

    invoke-direct {v0, v1}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    new-instance v1, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;

    invoke-direct {v1, p0, v4}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;-><init>(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$1;)V

    .line 91
    if-nez p3, :cond_2

    move-object v0, v1

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mJobFactory:Lcom/facebook/fbuploader/UploadJobFactory;

    invoke-virtual {v2, p1, p2, v0}, Lcom/facebook/fbuploader/UploadJobFactory;->createJob(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;)Lcom/facebook/fbuploader/UploadJob;

    move-result-object v0

    .line 96
    new-instance v2, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;

    invoke-direct {v2, v0, v4}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;-><init>(Lcom/facebook/fbuploader/UploadJob;Lcom/facebook/fbuploader/FbUploaderImpl$1;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl;->mListenersToHandles:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v2}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;->access$500(Lcom/facebook/fbuploader/FbUploaderImpl$FbUploadJobHandleImpl;)Lcom/facebook/fbuploader/UploadJob;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/fbuploader/UploadJob;->upload()V

    .line 99
    return-object v2

    .line 91
    :cond_2
    new-instance v0, Lcom/facebook/fbuploader/CompositeListener;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/facebook/fbuploader/Listener;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 94
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/fbuploader/CompositeListener;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method
