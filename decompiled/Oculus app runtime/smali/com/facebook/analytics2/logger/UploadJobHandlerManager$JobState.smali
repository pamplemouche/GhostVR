.class Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;
.super Ljava/lang/Object;
.source "UploadJobHandlerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobState"
.end annotation


# instance fields
.field private mPendingJobs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadJobHandler:Lcom/facebook/analytics2/logger/UploadJobHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentJobHandler()Lcom/facebook/analytics2/logger/UploadJobHandler;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mUploadJobHandler:Lcom/facebook/analytics2/logger/UploadJobHandler;

    return-object v0
.end method

.method public offerJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mPendingJobs:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mPendingJobs:Ljava/util/ArrayDeque;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mPendingJobs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public processNextJob()V
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->setCurrentJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mPendingJobs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setCurrentJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->mUploadJobHandler:Lcom/facebook/analytics2/logger/UploadJobHandler;

    return-void
.end method
