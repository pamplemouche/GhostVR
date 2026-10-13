.class public Lcom/oculus/library/model/InstallCallbackReceiver;
.super Ljava/lang/Object;
.source "InstallCallbackReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/library/model/InstallCallbackReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EXTRA_RESULT"


# instance fields
.field private final mCallback:Lcom/oculus/library/model/InstallCallback;

.field private final mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/oculus/library/model/InstallCallbackReceiver$2;

    invoke-direct {v0}, Lcom/oculus/library/model/InstallCallbackReceiver$2;-><init>()V

    sput-object v0, Lcom/oculus/library/model/InstallCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallCallback;

    .line 34
    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/InstallCallback;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallCallback;

    .line 21
    new-instance p1, Lcom/oculus/library/model/InstallCallbackReceiver$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oculus/library/model/InstallCallbackReceiver$1;-><init>(Lcom/oculus/library/model/InstallCallbackReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/library/model/InstallCallbackReceiver;)Lcom/oculus/library/model/InstallCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/InstallCallback;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public sendResult(Lcom/oculus/appmanager/info/model/InstallResult;)V
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_RESULT"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    iget-object p1, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oculus/library/model/InstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
