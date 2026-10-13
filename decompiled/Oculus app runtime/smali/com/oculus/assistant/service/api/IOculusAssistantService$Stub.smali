.class public abstract Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;
.super Landroid/os/Binder;
.source "IOculusAssistantService.java"

# interfaces
.implements Lcom/oculus/assistant/service/api/IOculusAssistantService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/IOculusAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.assistant.service.api.IOculusAssistantService"

.field static final TRANSACTION_getAttentionService:I = 0x2

.field static final TRANSACTION_getControlService:I = 0x1

.field static final TRANSACTION_getTranscriptionService:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.assistant.service.api.IOculusAssistantService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/assistant/service/api/IOculusAssistantService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.assistant.service.api.IOculusAssistantService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/oculus/assistant/service/api/IOculusAssistantService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/oculus/assistant/service/api/IOculusAssistantService;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.oculus.assistant.service.api.IOculusAssistantService"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 66
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;->getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 69
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 58
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;->getAttentionService()Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 61
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 50
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;->getControlService()Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 53
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2
.end method
