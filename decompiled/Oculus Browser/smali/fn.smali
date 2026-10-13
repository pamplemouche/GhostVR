.class public final Lfn;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:Lgn;


# direct methods
.method public constructor <init>(Lgn;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lfn;->a:Lgn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lxp;->a(Z)V

    iget-object v0, p0, Lfn;->a:Lgn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Len;

    .line 1
    iget-object v0, v0, Lgn;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    check-cast p1, LDt;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    throw v1

    .line 3
    :cond_2
    :try_start_0
    move-object v2, p1

    check-cast v2, LDt;

    if-eqz v2, :cond_3

    .line 4
    check-cast v0, Lqu;

    iget-object v2, v2, LDt;->a:Landroid/location/Location;

    check-cast v0, LY11;

    .line 5
    invoke-static {v2}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a(Landroid/location/Location;)V

    :goto_1
    return-void

    .line 6
    :cond_3
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    check-cast p1, LDt;

    if-eqz p1, :cond_4

    throw v0

    .line 8
    :cond_4
    throw v1
.end method
