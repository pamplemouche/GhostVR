.class public Lcom/oculus/horizon/samsung/ControllerConnection;
.super Ljava/lang/Object;
.source "ControllerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

.field private mRemoteInterface:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

.field private final mServiceCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/samsung/GearVRInputService;Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/oculus/horizon/samsung/ControllerConnection$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/samsung/ControllerConnection$1;-><init>(Lcom/oculus/horizon/samsung/ControllerConnection;)V

    iput-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 49
    new-instance v0, Lcom/oculus/horizon/samsung/ControllerConnection$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/samsung/ControllerConnection$2;-><init>(Lcom/oculus/horizon/samsung/ControllerConnection;)V

    iput-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    .line 71
    iput-object p1, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    .line 73
    iput-object p3, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mCallbacks:Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mRemoteInterface:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/samsung/ControllerConnection;Lcom/samsung/android/app/vr/input/service/IRemoteInterface;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mRemoteInterface:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/samsung/android/app/vr/input/service/IServiceCallback;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mCallbacks:Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/samsung/GearVRInputService;->stopAndUnbindSamsungVRInputService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 90
    return-void
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mRemoteInterface:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    iget-object v1, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceCallback:Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->getParcelFileDescriptor(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/samsung/GearVRInputService;->startAndBindSamsungVRInputService(Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    .line 86
    return-void
.end method

.method public queryInterface(I[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection;->mRemoteInterface:Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->queryInterface(I[B)Z

    move-result v0

    return v0
.end method
