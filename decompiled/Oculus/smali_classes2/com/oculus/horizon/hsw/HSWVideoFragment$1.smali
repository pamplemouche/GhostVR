.class Lcom/oculus/horizon/hsw/HSWVideoFragment$1;
.super Ljava/lang/Object;
.source "HSWVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$000(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "hsw_watching"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportHSWVideoEvent(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->WARNING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v0, v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$200(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$400(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$1;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$300(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
