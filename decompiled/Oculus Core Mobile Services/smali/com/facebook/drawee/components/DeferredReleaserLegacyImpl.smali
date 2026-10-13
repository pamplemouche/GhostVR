.class public Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;
.super Lcom/facebook/drawee/components/DeferredReleaser;
.source "DeferredReleaserLegacyImpl.java"


# instance fields
.field private final mPendingReleasables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/components/DeferredReleaser$Releasable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final releaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/drawee/components/DeferredReleaser;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl$1;-><init>(Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->releaseRunnable:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mPendingReleasables:Ljava/util/Set;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mUiHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->ensureOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mPendingReleasables:Ljava/util/Set;

    return-object v0
.end method

.method private static ensureOnUiThread()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->isOnUiThread()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public cancelDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->ensureOnUiThread()V

    .line 87
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mPendingReleasables:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public scheduleDeferredRelease(Lcom/facebook/drawee/components/DeferredReleaser$Releasable;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->ensureOnUiThread()V

    .line 69
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mPendingReleasables:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mPendingReleasables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/drawee/components/DeferredReleaserLegacyImpl;->releaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
