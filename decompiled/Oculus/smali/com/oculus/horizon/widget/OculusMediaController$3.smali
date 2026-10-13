.class Lcom/oculus/horizon/widget/OculusMediaController$3;
.super Ljava/lang/Object;
.source "OculusMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/OculusMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/OculusMediaController;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/OculusMediaController;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    .line 82
    if-nez p3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;->onSeekProgressChanged(Landroid/widget/SeekBar;I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;->onStartSeeking(Landroid/widget/SeekBar;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMediaController$3;->this$0:Lcom/oculus/horizon/widget/OculusMediaController;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusMediaController;->access$000(Lcom/oculus/horizon/widget/OculusMediaController;)Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/widget/OculusMediaController$OnControlChangedListener;->onStopSeeking(Landroid/widget/SeekBar;)V

    .line 95
    :cond_0
    return-void
.end method
