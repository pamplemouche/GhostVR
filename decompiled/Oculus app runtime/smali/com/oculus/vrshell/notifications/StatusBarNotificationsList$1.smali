.class final Lcom/oculus/vrshell/notifications/StatusBarNotificationsList$1;
.super Ljava/lang/Object;
.source "StatusBarNotificationsList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;
    .locals 1

    .line 52
    new-instance v0, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    invoke-direct {v0, p1}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/StatusBarNotificationsList$1;->newArray(I)[Lcom/oculus/vrshell/notifications/StatusBarNotificationsList;

    move-result-object p1

    return-object p1
.end method
