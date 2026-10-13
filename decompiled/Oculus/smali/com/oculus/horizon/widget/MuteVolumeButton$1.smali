.class Lcom/oculus/horizon/widget/MuteVolumeButton$1;
.super Ljava/lang/Object;
.source "MuteVolumeButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/MuteVolumeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/MuteVolumeButton;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/MuteVolumeButton;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/oculus/horizon/widget/MuteVolumeButton$1;->this$0:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton$1;->this$0:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton$1;->this$0:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->unMute()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/MuteVolumeButton$1;->this$0:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->mute()V

    goto :goto_0
.end method
