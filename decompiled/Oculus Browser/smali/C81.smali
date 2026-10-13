.class public final synthetic LC81;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/net/ProxyChangeListener;

.field public final x:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lorg/chromium/net/ProxyChangeListener;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC81;->w:Lorg/chromium/net/ProxyChangeListener;

    iput-object p2, p0, LC81;->x:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LC81;->w:Lorg/chromium/net/ProxyChangeListener;

    iget-object v1, p0, LC81;->x:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 1
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    sget-object v1, LE81;->e:LE81;

    goto :goto_0

    .line 5
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 7
    invoke-static {v1}, Lorg/chromium/net/ProxyChangeListener;->a(Landroid/content/Intent;)LE81;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, LE81;->a(Landroid/net/ProxyInfo;)LE81;

    move-result-object v1

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Lorg/chromium/net/ProxyChangeListener;->a(LE81;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 10
    throw v0
.end method
