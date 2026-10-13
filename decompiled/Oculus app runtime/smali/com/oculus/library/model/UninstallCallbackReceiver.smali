.class public Lcom/oculus/library/model/UninstallCallbackReceiver;
.super Ljava/lang/Object;
.source "UninstallCallbackReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/library/model/UninstallCallbackReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EXTRA_RESULT"


# instance fields
.field private final mCallback:Lcom/oculus/library/model/UninstallCallback;

.field private final mReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/oculus/library/model/UninstallCallbackReceiver$2;

    invoke-direct {v0}, Lcom/oculus/library/model/UninstallCallbackReceiver$2;-><init>()V

    sput-object v0, Lcom/oculus/library/model/UninstallCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/UninstallCallback;

    .line 35
    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/UninstallCallback;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/UninstallCallback;

    .line 22
    new-instance p1, Lcom/oculus/library/model/UninstallCallbackReceiver$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oculus/library/model/UninstallCallbackReceiver$1;-><init>(Lcom/oculus/library/model/UninstallCallbackReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/library/model/UninstallCallbackReceiver;)Lcom/oculus/library/model/UninstallCallback;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mCallback:Lcom/oculus/library/model/UninstallCallback;

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

    .line 39
    iget-object v0, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public sendResult(Lcom/oculus/appmanager/info/model/InstallResult;)V
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_RESULT"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    iget-object p1, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oculus/library/model/UninstallCallbackReceiver;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
