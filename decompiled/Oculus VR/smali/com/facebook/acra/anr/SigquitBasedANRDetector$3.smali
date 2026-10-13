.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->nativeLibraryLoaded(Z)V
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

    .prologue
    .line 259
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-boolean p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;->val$shouldStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-boolean v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;->val$shouldStart:Z

    invoke-static {v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$900(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)V

    .line 264
    return-void
.end method
