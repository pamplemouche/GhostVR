.class public abstract Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;
.super Landroid/os/Binder;
.source "IRuntimeClient.java"

# interfaces
.implements Lcom/oculus/vrruntimeservice/IRuntimeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/IRuntimeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.vrruntimeservice.IRuntimeClient"

.field static final TRANSACTION_createAndroidSurfaceSwapChain:I = 0x7

.field static final TRANSACTION_createTextureSwapChain:I = 0x6

.field static final TRANSACTION_destroy:I = 0x1

.field static final TRANSACTION_destroyTextureSwapChain:I = 0x8

.field static final TRANSACTION_enableRendering:I = 0x4

.field static final TRANSACTION_ensureGuardianConnection:I = 0x1c

.field static final TRANSACTION_exportGuardianJson:I = 0x11

.field static final TRANSACTION_forceGuardianSetup:I = 0x10

.field static final TRANSACTION_forceGuardianVisible:I = 0xd

.field static final TRANSACTION_getBufferObjectImportInfo:I = 0x5

.field static final TRANSACTION_getSharedMemoryFileDescriptor:I = 0x2

.field static final TRANSACTION_getSharedMemoryPrivateReadWriteFileDescriptor:I = 0x3

.field static final TRANSACTION_guardianCmd:I = 0xe

.field static final TRANSACTION_guardianCmdWithParms:I = 0xf

.field static final TRANSACTION_hideSystemDialog_GazeTimer:I = 0x17

.field static final TRANSACTION_hideSystemDialog_MessageDialog:I = 0x19

.field static final TRANSACTION_hideSystemDialog_RecenterTimer:I = 0x15

.field static final TRANSACTION_importGuardianJson:I = 0x12

.field static final TRANSACTION_isSystemDialogActive:I = 0x13

.field static final TRANSACTION_setAndroidSurfaceParameters:I = 0xa

.field static final TRANSACTION_setGobbOrientation:I = 0xc

.field static final TRANSACTION_setScreenCaptureInhibit:I = 0x1b

.field static final TRANSACTION_setSwapChainSamplerState:I = 0x9

.field static final TRANSACTION_showSystemDialog_GazeTimer:I = 0x16

.field static final TRANSACTION_showSystemDialog_MessageDialog:I = 0x18

.field static final TRANSACTION_showSystemDialog_RecenterTimer:I = 0x14

.field static final TRANSACTION_stopScreenCapture:I = 0x1a

.field static final TRANSACTION_updateLocalSpace:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.vrruntimeservice.IRuntimeClient"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/vrruntimeservice/IRuntimeClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.vrruntimeservice.IRuntimeClient"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oculus/vrruntimeservice/IRuntimeClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/vrruntimeservice/IRuntimeClient;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.oculus.vrruntimeservice.IRuntimeClient"

    const v3, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v0, v3, :cond_10

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 387
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 379
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->ensureGuardianConnection()Z

    move-result v0

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 370
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 373
    :cond_0
    invoke-virtual {p0, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->setScreenCaptureInhibit(Z)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 363
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->stopScreenCapture()V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 354
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->hideSystemDialog_MessageDialog(I)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 341
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->showSystemDialog_MessageDialog(IDLjava/lang/String;)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 334
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->hideSystemDialog_GazeTimer()V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 323
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->showSystemDialog_GazeTimer(FF)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 316
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->hideSystemDialog_RecenterTimer()V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 303
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    .line 310
    :cond_1
    invoke-virtual {p0, v0, v2, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->showSystemDialog_RecenterTimer(FFZ)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 295
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->isSystemDialogActive()Z

    move-result v0

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 283
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    .line 288
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->importGuardianJson([BZ)Z

    move-result v0

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 273
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->exportGuardianJson(Ljava/lang/String;)[B

    move-result-object v0

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v11

    .line 266
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->forceGuardianSetup()V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 252
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 259
    invoke-virtual {p0, v0, v2, v1}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->guardianCmdWithParms(IIF)I

    move-result v0

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 242
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->guardianCmd(I)I

    move-result v0

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 229
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 233
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 236
    :cond_4
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->forceGuardianVisible(ZDZ)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 220
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->setGobbOrientation(I)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 197
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 213
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

    .line 214
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->updateLocalSpace(IFFFFFFF)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 182
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 191
    :cond_5
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->setAndroidSurfaceParameters(IIIZ)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 166
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 171
    sget-object v2, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;

    .line 176
    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->setSwapChainSamplerState(ILcom/oculus/vrruntimeservice/SwapChainSamplerState;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 155
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    .line 160
    :cond_7
    invoke-virtual {p0, v0, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->destroyTextureSwapChain(IZ)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 132
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    sget-object v2, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;

    .line 142
    :cond_8
    invoke-virtual {p0, v0, v3}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->createAndroidSurfaceSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object v0

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, v10, v11}, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 149
    :cond_9
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v11

    .line 109
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 114
    sget-object v2, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;

    .line 119
    :cond_a
    invoke-virtual {p0, v0, v3}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->createTextureSwapChain(ILcom/oculus/vrruntimeservice/SwapChainCreateInfo;)Lcom/oculus/vrruntimeservice/SwapChainImportInfo;

    move-result-object v0

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 122
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, v10, v11}, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 126
    :cond_b
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v11

    .line 95
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->getBufferObjectImportInfo()Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object v0

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    .line 99
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, v10, v11}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 103
    :cond_c
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    .line 83
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v4, 0x1

    .line 88
    :cond_d
    invoke-virtual {p0, v0, v4}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->enableRendering(Landroid/os/IBinder;Z)Z

    move-result v0

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 69
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->getSharedMemoryPrivateReadWriteFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v0, v10, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 77
    :cond_e
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v11

    .line 55
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->getSharedMemoryFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_f

    .line 59
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, v10, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 63
    :cond_f
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v11

    .line 48
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/vrruntimeservice/IRuntimeClient$Stub;->destroy()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 43
    :cond_10
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
