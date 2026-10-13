.class public interface abstract Lcom/oculus/horizon/bluetooth/MalibuPresenter$View;
.super Ljava/lang/Object;
.source "MalibuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/MalibuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onError(Lcom/oculus/horizon/bluetooth/MalibuPresenter$Reason;)V
.end method

.method public abstract onMalibuBondStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
.end method

.method public abstract onSkip()V
.end method

.method public abstract onStateChanged(Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;)V
.end method
