.class public abstract Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;
.super Landroid/os/Binder;
.source "OVRServiceInterface.java"

# interfaces
.implements Lcom/oculus/platform/aidl/OVRServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/aidl/OVRServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/platform/aidl/OVRServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.aidl.OVRServiceInterface"

.field static final TRANSACTION_getAppScopedAccessToken:I = 0x5

.field static final TRANSACTION_getBaseURLEndpoint:I = 0x6

.field static final TRANSACTION_getEntitlementCheckBundle:I = 0x7

.field static final TRANSACTION_getIAPCheckoutFlowIntent:I = 0x2

.field static final TRANSACTION_getInstalledVRApplications:I = 0xb

.field static final TRANSACTION_getInvitableUsersFlowIntent:I = 0xa

.field static final TRANSACTION_getLatestAvailableAppInformation:I = 0x9

.field static final TRANSACTION_getSharedMicrophoneData:I = 0x12

.field static final TRANSACTION_getSystemVoipData:I = 0xf

.field static final TRANSACTION_isAppEntitled:I = 0x1

.field static final TRANSACTION_loadPublicProfileForUser:I = 0x3

.field static final TRANSACTION_logToMarauder:I = 0x8

.field static final TRANSACTION_savePublicProfileData:I = 0x4

.field static final TRANSACTION_setSystemVoipMicrophoneMuted:I = 0xd

.field static final TRANSACTION_setSystemVoipPassthrough:I = 0xc

.field static final TRANSACTION_setSystemVoipSuppressed:I = 0xe

.field static final TRANSACTION_sharedMicrophoneStop:I = 0x13

.field static final TRANSACTION_startPartyChat:I = 0x10

.field static final TRANSACTION_stopPartyChat:I = 0x11

.field static final TRANSACTION_updatePlatformContext:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/platform/aidl/OVRServiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.oculus.aidl.OVRServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oculus/platform/aidl/OVRServiceInterface;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/oculus/platform/aidl/OVRServiceInterface;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 448
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 49
    :sswitch_0
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->isAppEntitled()I

    move-result v4

    .line 56
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 72
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getIAPCheckoutFlowIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    .line 73
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v4, p3, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 70
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 79
    .restart local v4    # "_result":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->loadPublicProfileForUser(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 89
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_4
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->savePublicProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 105
    .restart local v4    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_5
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 119
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 120
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 126
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 135
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 140
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getBaseURLEndpoint(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 141
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 147
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 156
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 161
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getEntitlementCheckBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 162
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v4, :cond_7

    .line 164
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 168
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 179
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 184
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->logToMarauder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 185
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_9

    .line 187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 182
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 191
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 200
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 205
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getLatestAvailableAppInformation(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 206
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v4, :cond_b

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 212
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 221
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 226
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getInvitableUsersFlowIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    .line 227
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v4, :cond_d

    .line 229
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v4, p3, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/Intent;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 233
    .restart local v4    # "_result":Landroid/content/Intent;
    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/content/Intent;
    :sswitch_b
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 242
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 247
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getInstalledVRApplications(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 248
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v4, :cond_f

    .line 250
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 254
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 263
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 268
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->setSystemVoipPassthrough(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 269
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v4, :cond_11

    .line 271
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 275
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 284
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 289
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->setSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 290
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_13

    .line 292
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 296
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_e
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 305
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 310
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->setSystemVoipSuppressed(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 311
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v4, :cond_15

    .line 313
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 317
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_f
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 326
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 331
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getSystemVoipData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 332
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v4, :cond_17

    .line 334
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 329
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .line 338
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 344
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_10
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 347
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 352
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_d
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->startPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 353
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v4, :cond_19

    .line 355
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 350
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_d

    .line 359
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_11
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 368
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 373
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->stopPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 374
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v4, :cond_1b

    .line 376
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_e

    .line 380
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 386
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_12
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 389
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 394
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_f
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->getSharedMicrophoneData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 395
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v4, :cond_1d

    .line 397
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 392
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_f

    .line 401
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 407
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_13
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 410
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 415
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->sharedMicrophoneStop(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 416
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v4, :cond_1f

    .line 418
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 413
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_10

    .line 422
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 428
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_14
    const-string v6, "com.oculus.aidl.OVRServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    .line 431
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 436
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v0}, Lcom/oculus/platform/aidl/OVRServiceInterface$Stub;->updatePlatformContext(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 437
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v4, :cond_21

    .line 439
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_11

    .line 443
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_21
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 45
    nop

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
