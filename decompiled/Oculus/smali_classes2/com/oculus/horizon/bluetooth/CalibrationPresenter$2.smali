.class Lcom/oculus/horizon/bluetooth/CalibrationPresenter$2;
.super Ljava/lang/Object;
.source "CalibrationPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/CalibrationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/CalibrationPresenter;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/CalibrationPresenter$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationPresenter$2;->this$0:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->access$100(Lcom/oculus/horizon/bluetooth/CalibrationPresenter;)V

    .line 70
    return-void
.end method
