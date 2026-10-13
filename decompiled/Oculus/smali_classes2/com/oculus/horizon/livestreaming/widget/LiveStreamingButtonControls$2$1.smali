.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LiveStreamingButtonControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2$1;->this$1:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2$1;->this$1:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;

    iget-object v0, v0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$300(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    .line 139
    return-void
.end method
