.class public abstract LJ91;
.super LL91;
.source "PG"


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LL91;-><init>()V

    .line 2
    new-instance v0, LI91;

    invoke-direct {v0, p0}, LI91;-><init>(LJ91;)V

    iput-object v0, p0, LJ91;->d:Landroid/content/BroadcastReceiver;

    .line 3
    iput-object p1, p0, LJ91;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v1, p0, LJ91;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, LK91;

    .line 4
    iget-object v2, v2, LK91;->e:Landroid/os/UserManager;

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    invoke-virtual {p0, v1}, LL91;->a(Landroid/os/Bundle;)V

    return-void
.end method
