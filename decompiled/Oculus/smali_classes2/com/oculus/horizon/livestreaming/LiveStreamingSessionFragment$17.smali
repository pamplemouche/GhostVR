.class Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$17;
.super Ljava/lang/Object;
.source "LiveStreamingSessionFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$17;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment$17;->this$0:Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;->access$2600(Lcom/oculus/horizon/livestreaming/LiveStreamingSessionFragment;)V

    .line 988
    const/4 v0, 0x0

    return v0
.end method
