.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;
.super Ljava/lang/Object;
.source "LiveStreamingButtonControls.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$000(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$1;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$100(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
