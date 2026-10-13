.class Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$1;
.super Ljava/util/TimerTask;
.source "SelfReapingRefCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->startSelfReapingReaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$1;->this$0:Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter$1;->this$0:Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;

    invoke-virtual {v0}, Lcom/oculus/horizon/weak_ref_counter/SelfReapingRefCounter;->removeDeadRefs()V

    .line 118
    return-void
.end method
