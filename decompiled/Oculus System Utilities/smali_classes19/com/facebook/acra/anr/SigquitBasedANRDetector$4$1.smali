.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$4$1;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;->updateAnrState(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4$1;->this$1:Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1000()V

    .line 287
    return-void
.end method
