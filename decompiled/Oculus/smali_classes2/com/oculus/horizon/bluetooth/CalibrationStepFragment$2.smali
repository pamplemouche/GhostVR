.class Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$2;
.super Ljava/lang/Object;
.source "CalibrationStepFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 113
    return-void
.end method
