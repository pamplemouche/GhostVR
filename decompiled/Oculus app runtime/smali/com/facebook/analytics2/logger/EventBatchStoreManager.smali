.class Lcom/facebook/analytics2/logger/EventBatchStoreManager;
.super Ljava/lang/Object;
.source "EventBatchStoreManager.java"


# instance fields
.field private final mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

.field private final mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventBatchStore;Lcom/facebook/analytics2/logger/UploadBatchNotifier;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    .line 20
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    return-void
.end method

.method private postWrite()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventBatchStore;->getCurrentBatchObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/analytics2/logger/UploadBatchNotifier;->setLastNotifiedObject(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadBatchNotifier;->notifyEventLogged()V

    .line 59
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStore;->isCurrentBatchReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadBatchNotifier;->notifyBatchReady()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStore;->isCurrentBatchFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBatchStore;->closeBatch()V

    :cond_1
    return-void
.end method


# virtual methods
.method public doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStore;->startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    return-void
.end method

.method public doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStore;->startNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    return-void
.end method

.method public doUserLogout(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadBatchNotifier;->notifyUserLogout(Ljava/lang/String;)V

    return-void
.end method

.method public doWrite(Lcom/facebook/crudolib/params/ParamsCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStore;->write(Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 52
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->postWrite()V

    return-void
.end method

.method public doWrites([Lcom/facebook/crudolib/params/ParamsCollection;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    .line 38
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v1, p2}, Lcom/facebook/analytics2/logger/EventBatchStore;->recommendedNextWriteAmount(I)I

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mEventBatchStore:Lcom/facebook/analytics2/logger/EventBatchStore;

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStore;->writes([Lcom/facebook/crudolib/params/ParamsCollection;II)V

    .line 42
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->postWrite()V

    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getUploadBatchNotifierForDebug()Lcom/facebook/analytics2/logger/UploadBatchNotifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->mUploadBatchNotifier:Lcom/facebook/analytics2/logger/UploadBatchNotifier;

    return-object v0
.end method
