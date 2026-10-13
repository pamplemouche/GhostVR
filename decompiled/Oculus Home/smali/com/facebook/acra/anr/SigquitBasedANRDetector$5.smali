.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$shouldStart:Z


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-boolean p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->val$shouldStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1202(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z

    .line 324
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;->onNativeInit()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1302(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;)Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    .line 328
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->val$shouldStart:Z

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1400()V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1500(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    goto :goto_0
.end method
