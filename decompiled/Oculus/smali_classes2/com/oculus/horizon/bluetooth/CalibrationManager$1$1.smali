.class Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;
.super Ljava/lang/Object;
.source "CalibrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->onConnectionState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/bluetooth/CalibrationManager$1;

.field final synthetic val$previousState:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/CalibrationManager$1;II)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->this$1:Lcom/oculus/horizon/bluetooth/CalibrationManager$1;

    iput p2, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->val$state:I

    iput p3, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->val$previousState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->this$1:Lcom/oculus/horizon/bluetooth/CalibrationManager$1;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationManager;

    iget v1, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->val$state:I

    iget v2, p0, Lcom/oculus/horizon/bluetooth/CalibrationManager$1$1;->val$previousState:I

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/CalibrationManager;->access$800(Lcom/oculus/horizon/bluetooth/CalibrationManager;II)V

    .line 113
    return-void
.end method
