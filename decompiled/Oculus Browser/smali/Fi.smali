.class public LFi;
.super LB;
.source "PG"


# instance fields
.field public final synthetic a:LGi;


# direct methods
.method public constructor <init>(LGi;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFi;->a:LGi;

    invoke-direct {p0}, LB;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(LA;Landroid/app/PendingIntent;)Z
    .locals 6

    .line 1
    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1, p2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(LA;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    .line 2
    :try_start_0
    new-instance v0, LEi;

    invoke-direct {v0, p0, v1}, LEi;-><init>(LFi;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 3
    iget-object v2, p0, LFi;->a:LGi;

    iget-object v2, v2, LGi;->w:Ld7;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5
    iget-object v3, p0, LFi;->a:LGi;

    iget-object v3, v3, LGi;->w:Ld7;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    iget-object p1, p0, LFi;->a:LGi;

    check-cast p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;

    .line 8
    iget-object p1, p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnectionService;->y:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz p1, :cond_0

    .line 9
    new-instance v3, LF60;

    invoke-direct {v3, p1}, LF60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V

    .line 10
    new-instance v5, LG60;

    invoke-direct {v5, p1, v1}, LG60;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    .line 11
    new-instance v4, Ln20;

    invoke-direct {v4, v5}, Ln20;-><init>(LIi;)V

    .line 12
    iget-object v0, p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 14
    invoke-virtual/range {v0 .. v5}, Lo60;->a(Landroidx/browser/customtabs/CustomTabsSessionToken;ILm60;Ln20;LKi;)Z

    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "newSession()"

    invoke-virtual {p1, v2, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method
