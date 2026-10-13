.class public abstract Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;
.super Landroid/os/Binder;
.source "INotificationDataSetProvider.java"

# interfaces
.implements Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.vrshell.notifications.INotificationDataSetProvider"

.field static final TRANSACTION_enableDNDMode:I = 0x11

.field static final TRANSACTION_getAllNotifications:I = 0x1

.field static final TRANSACTION_getAllPersistentNotifications:I = 0x2

.field static final TRANSACTION_getAllPersistentNotificationsExcept:I = 0x3

.field static final TRANSACTION_getFilteredNotifications:I = 0x4

.field static final TRANSACTION_getNotificationsByType:I = 0x5

.field static final TRANSACTION_isBlacklistedNotification:I = 0xc

.field static final TRANSACTION_isDownloadInProgressNotification:I = 0xa

.field static final TRANSACTION_isDownloadNotification:I = 0x9

.field static final TRANSACTION_isHighPriorityNotification:I = 0xe

.field static final TRANSACTION_isPersistentNotification:I = 0xd

.field static final TRANSACTION_isSocialNotification:I = 0x8

.field static final TRANSACTION_isSystemNotification:I = 0x7

.field static final TRANSACTION_isWhitelistedNotification:I = 0xb

.field static final TRANSACTION_removeNotification:I = 0x6

.field static final TRANSACTION_suppressToasts:I = 0xf

.field static final TRANSACTION_unsuppressToasts:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.vrshell.notifications.INotificationDataSetProvider"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.vrshell.notifications.INotificationDataSetProvider"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.oculus.vrshell.notifications.INotificationDataSetProvider"

    if-eq p1, v0, :cond_b

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 248
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->enableDNDMode(Z)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 241
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->unsuppressToasts()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 234
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->suppressToasts()V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 219
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 227
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isHighPriorityNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 204
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 212
    :cond_2
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isPersistentNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 189
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 197
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isBlacklistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 174
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 177
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 182
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isWhitelistedNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 159
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 162
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 167
    :cond_5
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isDownloadInProgressNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 144
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 147
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 152
    :cond_6
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isDownloadNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 129
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 132
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 137
    :cond_7
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isSocialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 114
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 117
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 122
    :cond_8
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 105
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->removeNotification(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/oculus/vrshell/notifications/NotificationsType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 98
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->getNotificationsByType([Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 80
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 83
    sget-object p1, Lcom/oculus/vrshell/notifications/NotificationsType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 88
    :cond_9
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->getFilteredNotifications(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 65
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 68
    sget-object p1, Lcom/oculus/vrshell/notifications/NotificationsType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 73
    :cond_a
    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->getAllPersistentNotificationsExcept(Lcom/oculus/vrshell/notifications/NotificationsType;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 57
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->getAllPersistentNotifications()Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 49
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/oculus/vrshell/notifications/INotificationDataSetProvider$Stub;->getAllNotifications()Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 44
    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
