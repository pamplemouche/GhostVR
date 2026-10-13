.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;
.super Lcom/facebook/acra/anr/AppStateUpdater;
.source "SigquitBasedANRDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->hookMethodsAndMaybeStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

.field final synthetic val$originalUpdater:Lcom/facebook/acra/anr/AppStateUpdater;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Lcom/facebook/acra/anr/AppStateUpdater;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-object p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->val$originalUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    invoke-direct {p0}, Lcom/facebook/acra/anr/AppStateUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z
    .locals 2
    .param p2    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-object v1, v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldCleanupANRStateOnASLThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4$1;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4$1;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;)V

    .line 294
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->val$originalUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->val$originalUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/acra/anr/AppStateUpdater;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z

    move-result v0

    .line 297
    :goto_1
    return v0

    .line 290
    :cond_1
    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    if-ne p1, v1, :cond_0

    .line 291
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1000()V

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
