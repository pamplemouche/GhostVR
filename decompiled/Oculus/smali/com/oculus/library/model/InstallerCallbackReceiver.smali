.class public Lcom/oculus/library/model/InstallerCallbackReceiver;
.super Ljava/lang/Object;
.source "InstallerCallbackReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/library/model/InstallerCallbackReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Lcom/oculus/library/model/InstallerCallback;

.field private final mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/oculus/library/model/InstallerCallbackReceiver$2;

    invoke-direct {v0}, Lcom/oculus/library/model/InstallerCallbackReceiver$2;-><init>()V

    sput-object v0, Lcom/oculus/library/model/InstallerCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallerCallback;

    .line 34
    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/InstallerCallback;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallerCallback;

    .line 21
    new-instance v0, Lcom/oculus/library/model/InstallerCallbackReceiver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/library/model/InstallerCallbackReceiver$1;-><init>(Lcom/oculus/library/model/InstallerCallbackReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/library/model/InstallerCallbackReceiver;)Lcom/oculus/library/model/InstallerCallback;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallerCallback;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public sendResult(Lcom/oculus/appmanager/info/model/InstallerResult;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v1, "EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    iget-object v1, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
