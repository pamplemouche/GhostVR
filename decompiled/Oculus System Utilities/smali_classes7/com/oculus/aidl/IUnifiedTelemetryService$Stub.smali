.class public abstract Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;
.super Landroid/os/Binder;
.source "IUnifiedTelemetryService.java"

# interfaces
.implements Lcom/oculus/aidl/IUnifiedTelemetryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/aidl/IUnifiedTelemetryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/aidl/IUnifiedTelemetryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.aidl.IUnifiedTelemetryService"

.field static final TRANSACTION_endFunnel:I = 0xa

.field static final TRANSACTION_endFunnelWithId:I = 0xb

.field static final TRANSACTION_logExposure:I = 0x4

.field static final TRANSACTION_registerFunnel:I = 0x5

.field static final TRANSACTION_reportEvents:I = 0x3

.field static final TRANSACTION_reportFunnelAction:I = 0x8

.field static final TRANSACTION_reportFunnelActionWithId:I = 0x9

.field static final TRANSACTION_shouldDuplicateLogging:I = 0x1

.field static final TRANSACTION_shouldUseUnifiedTelemetryService:I = 0x2

.field static final TRANSACTION_startFunnel:I = 0x6

.field static final TRANSACTION_startFunnelWithId:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.oculus.aidl.IUnifiedTelemetryService"

    invoke-virtual {p0, p0, v0}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/IUnifiedTelemetryService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.oculus.aidl.IUnifiedTelemetryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oculus/aidl/IUnifiedTelemetryService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/aidl/IUnifiedTelemetryService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->shouldDuplicateLogging(Ljava/lang/String;)Z

    move-result v15

    .line 51
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v15, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 57
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_2
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->shouldUseUnifiedTelemetryService(Ljava/lang/String;)Z

    move-result v15

    .line 61
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v15, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 67
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_3
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 76
    .local v3, "_arg0":Landroid/os/PersistableBundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    .line 77
    .local v4, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->reportEvents(Landroid/os/PersistableBundle;Z)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "_arg0":Landroid/os/PersistableBundle;
    .end local v4    # "_arg1":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/PersistableBundle;
    goto :goto_3

    .line 76
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 83
    .end local v3    # "_arg0":Landroid/os/PersistableBundle;
    :sswitch_4
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 96
    .local v5, "_arg2":Landroid/os/PersistableBundle;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    .line 103
    .local v6, "_arg3":Landroid/os/PersistableBundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    .local v7, "_arg4":Z
    :goto_7
    move-object/from16 v2, p0

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->logExposure(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 93
    .end local v5    # "_arg2":Landroid/os/PersistableBundle;
    .end local v6    # "_arg3":Landroid/os/PersistableBundle;
    .end local v7    # "_arg4":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/os/PersistableBundle;
    goto :goto_5

    .line 100
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/PersistableBundle;
    goto :goto_6

    .line 103
    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 110
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/PersistableBundle;
    .end local v6    # "_arg3":Landroid/os/PersistableBundle;
    :sswitch_5
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->registerFunnel(Ljava/lang/String;I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 121
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->startFunnel(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 130
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 135
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->startFunnelWithId(Ljava/lang/String;J)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 141
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":J
    :sswitch_8
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 150
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersistableBundle;

    .line 155
    .restart local v6    # "_arg3":Landroid/os/PersistableBundle;
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 153
    .end local v6    # "_arg3":Landroid/os/PersistableBundle;
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/PersistableBundle;
    goto :goto_8

    .line 161
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/os/PersistableBundle;
    :sswitch_9
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 167
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 172
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersistableBundle;

    .local v7, "_arg4":Landroid/os/PersistableBundle;
    :goto_9
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    .line 177
    invoke-virtual/range {v8 .. v14}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->reportFunnelActionWithId(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 175
    .end local v7    # "_arg4":Landroid/os/PersistableBundle;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/PersistableBundle;
    goto :goto_9

    .line 183
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/os/PersistableBundle;
    .end local v10    # "_arg1":J
    :sswitch_a
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->endFunnel(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.oculus.aidl.IUnifiedTelemetryService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 197
    .restart local v10    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v11}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->endFunnelWithId(Ljava/lang/String;J)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
