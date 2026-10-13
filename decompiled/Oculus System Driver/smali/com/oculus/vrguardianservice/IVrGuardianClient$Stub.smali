.class public abstract Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;
.super Landroid/os/Binder;
.source "IVrGuardianClient.java"

# interfaces
.implements Lcom/oculus/vrguardianservice/IVrGuardianClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/IVrGuardianClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.vrguardianservice.IVrGuardianClient"

.field static final TRANSACTION_destroy:I = 0x1

.field static final TRANSACTION_exportGuardianJson:I = 0xa

.field static final TRANSACTION_forceGuardianSetup:I = 0x9

.field static final TRANSACTION_forceGuardianVisible:I = 0x6

.field static final TRANSACTION_fullStartup:I = 0x2

.field static final TRANSACTION_getSharedMemoryFileDescriptor:I = 0x3

.field static final TRANSACTION_guardianCmd:I = 0x7

.field static final TRANSACTION_guardianCmdWithParms:I = 0x8

.field static final TRANSACTION_importGuardianJson:I = 0xb

.field static final TRANSACTION_onDestroyActiveClient:I = 0x10

.field static final TRANSACTION_setClientMgrState:I = 0xf

.field static final TRANSACTION_setGobbOrientation:I = 0x5

.field static final TRANSACTION_setPackageName:I = 0xd

.field static final TRANSACTION_suspendResume:I = 0xc

.field static final TRANSACTION_updateAfterMountInBlackRelocDuration:I = 0xe

.field static final TRANSACTION_updateLocalSpace:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.vrguardianservice.IVrGuardianClient"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.vrguardianservice.IVrGuardianClient"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oculus/vrguardianservice/IVrGuardianClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/vrguardianservice/IVrGuardianClient;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v10, p3

    const-string v2, "com.oculus.vrguardianservice.IVrGuardianClient"

    const v3, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v0, v3, :cond_9

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 214
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->onDestroyActiveClient(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 201
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 207
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 208
    :cond_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->setClientMgrState(ZZZ)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 192
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 195
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->updateAfterMountInBlackRelocDuration(Z)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 183
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->setPackageName(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 174
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 177
    :cond_4
    invoke-virtual {p0, v3}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->suspendResume(Z)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 162
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 167
    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->importGuardianJson([BZ)Z

    move-result v0

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 152
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v11

    .line 145
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->forceGuardianSetup()V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 131
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 138
    invoke-virtual {p0, v0, v2, v1}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->guardianCmdWithParms(IIF)I

    move-result v0

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 121
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->guardianCmd(I)I

    move-result v0

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 108
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 112
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 115
    :cond_7
    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->forceGuardianVisible(ZDZ)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 99
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->setGobbOrientation(I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 76
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v12

    .line 93
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->updateLocalSpace(IFFFFFFF)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 62
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 66
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v0, v10, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 70
    :cond_8
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    .line 55
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->fullStartup()V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 48
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/vrguardianservice/IVrGuardianClient$Stub;->destroy()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 43
    :cond_9
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
