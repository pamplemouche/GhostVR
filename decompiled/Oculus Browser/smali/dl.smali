.class public abstract Ldl;
.super Ljs;
.source "PG"

# interfaces
.implements Lcl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.IAppVisibilityListener"

    .line 1
    invoke-direct {p0, v0}, Ljs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const/4 p4, 0x4

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3
    :cond_1
    move-object p1, p0

    check-cast p1, LSk;

    .line 4
    iget-object p1, p1, LSk;->a:LHj;

    check-cast p1, LKk;

    .line 5
    iget-object p1, p1, LKk;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 6
    iget-object p4, p1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Landroid/app/Notification;

    if-eqz p4, :cond_2

    .line 7
    invoke-virtual {p1, p2, p4}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    .line 9
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 10
    :cond_3
    move-object p1, p0

    check-cast p1, LSk;

    .line 11
    iget-object p1, p1, LSk;->a:LHj;

    check-cast p1, LKk;

    .line 12
    iget-object p1, p1, LKk;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 14
    :cond_4
    move-object p1, p0

    check-cast p1, LSk;

    .line 15
    iget-object p1, p1, LSk;->a:LHj;

    .line 16
    new-instance p4, Leq;

    invoke-direct {p4, p1}, Leq;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p4}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_1
    return p2
.end method
