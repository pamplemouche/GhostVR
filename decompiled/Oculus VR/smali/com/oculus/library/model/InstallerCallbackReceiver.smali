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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/library/model/InstallerCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
