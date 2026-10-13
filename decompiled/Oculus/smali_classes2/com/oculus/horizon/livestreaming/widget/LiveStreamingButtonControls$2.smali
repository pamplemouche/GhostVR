.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;
.super Ljava/lang/Object;
.source "LiveStreamingButtonControls.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 127
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    .line 131
    invoke-static {v1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$200(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/16 v4, 0xfa

    new-instance v5, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2$1;

    invoke-direct {v5, p0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2$1;-><init>(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$2;)V

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$400(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Landroid/widget/TextView;IIILandroid/animation/AnimatorListenerAdapter;)V

    .line 141
    return-void
.end method
