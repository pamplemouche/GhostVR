.class Lcom/oculus/horizon/hsw/HSWVideoFragment$3;
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
    .line 146
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$3;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$3;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$000(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "hsw_decline_clicked"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportHSWVideoEvent(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$3;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$500(Lcom/oculus/horizon/hsw/HSWVideoFragment;Z)V

    .line 152
    return-void
.end method
