.class public LPb;
.super LVb;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;LWb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LVb;-><init>(Landroid/content/Context;LWb;)V

    return-void
.end method


# virtual methods
.method public a(LRb;LRa;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LVb;->a(LRb;LRa;)V

    .line 2
    iget-object p1, p1, LRb;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result p1

    .line 4
    iget-object p2, p2, LRa;->a:Landroid/os/Bundle;

    const-string v0, "deviceType"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
