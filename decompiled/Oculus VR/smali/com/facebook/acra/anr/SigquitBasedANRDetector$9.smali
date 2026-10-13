.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$9;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->processANRData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$9;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$9;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$2000(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    .line 596
    return-void
.end method
