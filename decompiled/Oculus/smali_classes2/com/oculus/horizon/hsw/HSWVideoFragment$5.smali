.class Lcom/oculus/horizon/hsw/HSWVideoFragment$5;
.super Ljava/lang/Object;
.source "HSWVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/hsw/HSWVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$000(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "hsw_video_complete"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportHSWVideoEvent(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$400(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$300(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$602(Lcom/oculus/horizon/hsw/HSWVideoFragment;Z)Z

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$5;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CONFIRM:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v0, v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 172
    return-void
.end method
