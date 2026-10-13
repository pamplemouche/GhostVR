.class public Lp81;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PG"


# instance fields
.field public final synthetic a:LA81;


# direct methods
.method public synthetic constructor <init>(LA81;Ln81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp81;->a:LA81;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lp81;->a:LA81;

    .line 2
    iget-boolean v0, p1, LA81;->k:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, LA81;->a()V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lp81;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lp81;->onAvailable(Landroid/net/Network;)V

    return-void
.end method
