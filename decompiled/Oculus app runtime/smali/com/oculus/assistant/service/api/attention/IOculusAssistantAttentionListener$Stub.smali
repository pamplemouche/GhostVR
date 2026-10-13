.class public abstract Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;
.super Landroid/os/Binder;
.source "IOculusAssistantAttentionListener.java"

# interfaces
.implements Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.assistant.service.api.attention.IOculusAssistantAttentionListener"

.field static final TRANSACTION_onAssistantResponse:I = 0x4

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onInteractionCompleted:I = 0x5

.field static final TRANSACTION_onInteractionPropertiesChanged:I = 0x2

.field static final TRANSACTION_onInteractionStateChanged:I = 0x1

.field static final TRANSACTION_onTranscriptionChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.assistant.service.api.attention.IOculusAssistantAttentionListener"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.assistant.service.api.attention.IOculusAssistantAttentionListener"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const-string v1, "com.oculus.assistant.service.api.attention.IOculusAssistantAttentionListener"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    sget-object p1, Lcom/oculus/assistant/service/api/attention/AssistantErrorType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    .line 114
    :cond_0
    invoke-virtual {p0, v3}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onError(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)Z

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 96
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onInteractionCompleted(Z)Z

    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 86
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onAssistantResponse(Ljava/lang/String;)Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 74
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 79
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onTranscriptionChanged(Ljava/lang/String;Z)Z

    move-result p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 64
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onInteractionPropertiesChanged(F)Z

    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 49
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    sget-object p1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 57
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;->onInteractionStateChanged(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)Z

    move-result p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 44
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
