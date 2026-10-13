.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LiveStreamingButtonControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->clearTalkButtonPressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$300(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$700(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$200(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$800(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$900(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$1000(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$1100(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$1200(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$4;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->setTalkButtonEnabledState()V

    .line 257
    :cond_0
    return-void
.end method
