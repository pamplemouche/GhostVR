.class public Lcom/oculus/ipc/common/ParcelableCallbackReceiver;
.super Ljava/lang/Object;
.source "ParcelableCallbackReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback",
        "<TR;>;R::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mCallback:Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    .line 65
    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mCallback:Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    .line 46
    new-instance v0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver$1;-><init>(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mCallback:Lcom/oculus/ipc/common/ParcelableCallbackReceiver$Callback;

    return-object v0
.end method


# virtual methods
.method public getReceiverForIPC()Landroid/os/ResultReceiver;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 78
    return-object v0
.end method

.method public sendResult(Landroid/os/Parcelable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string v1, "extra_callback_receiver_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    iget-object v1, p0, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 85
    return-void
.end method
