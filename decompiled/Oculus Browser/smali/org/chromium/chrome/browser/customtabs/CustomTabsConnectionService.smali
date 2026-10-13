.class public Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;
.super LGi;
.source "PG"


# instance fields
.field public y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

.field public z:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LGi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->z:Landroid/content/Intent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2}, LEc0;->a(Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->z:Landroid/content/Intent;

    return v1

    :cond_1
    return v2
.end method

.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z
    .locals 3

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_0

    .line 13
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lx60;

    invoke-direct {v2, v0, p1}, Lx60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    .line 14
    invoke-super {p0, p1}, LGi;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method public a(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    new-instance v1, Lh20;

    invoke-direct {v1, p2}, Lh20;-><init>(Landroid/net/Uri;)V

    .line 2
    iget-object p2, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->b:Lp20;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p2, v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {p2, p1}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 7
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LE60;

    invoke-direct {v3, v0, p1, p2, v1}, LE60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroidx/browser/customtabs/CustomTabsSessionToken;ILh20;)V

    const-wide/16 p1, 0x0

    .line 8
    invoke-static {v2, v3, p1, p2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    const/4 v2, 0x1

    :goto_0
    const-string p1, "requestPostMessageChannel() with origin "

    .line 9
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->z:Landroid/content/Intent;

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Service#onBind()"

    invoke-virtual {p1, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, LGi;->x:LB;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->c()V

    .line 2
    invoke-static {}, LN60;->b()V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Service#onUnbind()"

    invoke-virtual {p1, v1, v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
