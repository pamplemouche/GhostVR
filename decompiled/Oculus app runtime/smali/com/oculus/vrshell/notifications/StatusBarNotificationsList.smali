.class public Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;
.super Ljava/lang/Object;
.source "StatusBarNotificationsList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/oculus/vrshell/notifications/NotificationsType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList$1;

    invoke-direct {v0}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList$1;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/vrshell/notifications/NotificationsType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/vrshell/notifications/NotificationsType;",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->type:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 17
    iput-object p2, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->notifications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->type:Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/oculus/vrshell/notifications/NotificationsType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/notifications/NotificationsType;

    iput-object v0, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->type:Lcom/oculus/vrshell/notifications/NotificationsType;

    .line 45
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->notifications:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->type:Lcom/oculus/vrshell/notifications/NotificationsType;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/vrshell/notifications/NotificationsType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object p2, p0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;->notifications:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
