.class public LYp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final a:Landroid/location/LocationManager;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager;LWp0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYp0;->a:Landroid/location/LocationManager;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LYp0;->b:Landroid/os/Handler;

    .line 4
    new-instance p1, LXp0;

    invoke-direct {p1, p0}, LXp0;-><init>(LYp0;)V

    iput-object p1, p0, LYp0;->c:Ljava/lang/Runnable;

    .line 5
    iget-object p2, p0, LYp0;->b:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object p1, p0, LYp0;->b:Landroid/os/Handler;

    iget-object v0, p0, LYp0;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2
    sput-object p1, LZp0;->a:LYp0;

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
