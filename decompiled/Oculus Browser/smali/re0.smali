.class public Lre0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Messenger;

.field public final b:Lqe0;

.field public final c:Lpe0;

.field public final d:Lne0;

.field public e:Landroid/content/Context;

.field public f:Lorg/chromium/base/Callback;

.field public g:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/base/Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lre0;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lre0;->f:Lorg/chromium/base/Callback;

    .line 4
    new-instance p1, Lqe0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lqe0;-><init>(Lre0;Loe0;)V

    iput-object p1, p0, Lre0;->b:Lqe0;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lre0;->b:Lqe0;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lre0;->a:Landroid/os/Messenger;

    .line 6
    new-instance p1, Lpe0;

    invoke-direct {p1, p0, p2}, Lpe0;-><init>(Lre0;Loe0;)V

    iput-object p1, p0, Lre0;->c:Lpe0;

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lne0;

    invoke-direct {p1}, Lne0;-><init>()V

    .line 9
    iput-object p1, p0, Lre0;->d:Lne0;

    return-void

    .line 10
    :cond_0
    throw p2
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lre0;->g:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const-string v0, "GSAServiceClient"

    const-string v1, "Already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.ssb.action.SSB_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lre0;->e:Landroid/content/Context;

    iget-object v3, p0, Lre0;->c:Lpe0;

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lre0;->g:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lre0;->e:Landroid/content/Context;

    iget-object v1, p0, Lre0;->c:Lpe0;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lre0;->g:Landroid/os/Messenger;

    .line 4
    iget-object v1, p0, Lre0;->b:Lqe0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
