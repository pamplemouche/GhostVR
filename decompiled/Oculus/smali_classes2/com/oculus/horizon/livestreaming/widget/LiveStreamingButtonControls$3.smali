.class Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;
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
    .line 145
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$502(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;Z)Z

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls$3;->this$0:Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;->access$600(Lcom/oculus/horizon/livestreaming/widget/LiveStreamingButtonControls;)V

    .line 150
    return-void
.end method
