.class public abstract Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;
.super Landroid/os/Binder;
.source "IInputInjectionService.java"

# interfaces
.implements Lcom/oculus/inputinjectionservice/IInputInjectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/inputinjectionservice/IInputInjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.inputinjectionservice.IInputInjectionService"

.field static final TRANSACTION_getButtons:I = 0x9

.field static final TRANSACTION_getHeadsetPose:I = 0x5

.field static final TRANSACTION_getJoysticks:I = 0xb

.field static final TRANSACTION_getLeftPose:I = 0x1

.field static final TRANSACTION_getRightPose:I = 0x3

.field static final TRANSACTION_getTurnOff:I = 0x7

.field static final TRANSACTION_setButtons:I = 0xa

.field static final TRANSACTION_setHeadsetPose:I = 0x6

.field static final TRANSACTION_setJoysticks:I = 0xc

.field static final TRANSACTION_setLeftPose:I = 0x2

.field static final TRANSACTION_setRightPose:I = 0x4

.field static final TRANSACTION_setTurnOff:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.inputinjectionservice.IInputInjectionService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/inputinjectionservice/IInputInjectionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.inputinjectionservice.IInputInjectionService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oculus/inputinjectionservice/IInputInjectionService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/inputinjectionservice/IInputInjectionService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oculus.inputinjectionservice.IInputInjectionService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setJoysticks([F)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 133
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getJoysticks()[F

    move-result-object p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 124
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setButtons([Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 116
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getButtons()[Z

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v2

    .line 107
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setTurnOff([Z)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 99
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getTurnOff()[Z

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v2

    .line 90
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setHeadsetPose([F)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 82
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getHeadsetPose()[F

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 73
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setRightPose([F)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 65
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getRightPose()[F

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 56
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->setLeftPose([F)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 48
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/inputinjectionservice/IInputInjectionService$Stub;->getLeftPose()[F

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
