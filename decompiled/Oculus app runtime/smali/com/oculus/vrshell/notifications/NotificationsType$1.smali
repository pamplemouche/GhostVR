.class final Lcom/oculus/vrshell/notifications/NotificationsType$1;
.super Ljava/lang/Object;
.source "NotificationsType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/notifications/NotificationsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/vrshell/notifications/NotificationsType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 0

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrshell/notifications/NotificationsType;->valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/notifications/NotificationsType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/NotificationsType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrshell/notifications/NotificationsType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/vrshell/notifications/NotificationsType;
    .locals 0

    .line 34
    new-array p1, p1, [Lcom/oculus/vrshell/notifications/NotificationsType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/notifications/NotificationsType$1;->newArray(I)[Lcom/oculus/vrshell/notifications/NotificationsType;

    move-result-object p1

    return-object p1
.end method
