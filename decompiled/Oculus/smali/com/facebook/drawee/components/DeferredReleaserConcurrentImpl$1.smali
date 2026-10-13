.class Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;
.super Ljava/lang/Object;
.source "DeferredReleaserConcurrentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

.field final synthetic this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$000(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 54
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    array-length v0, v0

    if-ge v0, v5, :cond_1

    .line 55
    :cond_0
    const/16 v0, 0x8

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    .line 60
    iget-object v7, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    add-int/lit8 v3, v2, 0x1

    aput-object v0, v7, v2

    move v2, v3

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->this$0:Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;

    invoke-static {v0}, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;->access$100(Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 65
    :goto_1
    if-ge v0, v5, :cond_3

    .line 66
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/facebook/drawee/components/DeferredReleaser$Releasable;->release()V

    .line 67
    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserConcurrentImpl$1;->mTempReleasables:[Lcom/facebook/drawee/components/DeferredReleaser$Releasable;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 69
    :cond_3
    return-void
.end method
