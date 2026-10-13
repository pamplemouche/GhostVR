.class Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$1;
.super Ljava/lang/Object;
.source "CalibrationStepFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;
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
    .line 61
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->access$000(Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;)V

    .line 65
    return-void
.end method
