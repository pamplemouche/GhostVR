.class public abstract LmP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFf1;


# direct methods
.method public synthetic constructor <init>(LkP0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(LSf1;)V
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "WebApk.WebApkService.BindSuccess"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-static {p1}, LRf1;->a(Landroid/os/IBinder;)LSf1;

    move-result-object p1

    invoke-virtual {p0, p1}, LmP0;->a(LSf1;)V

    .line 3
    invoke-static {v0, v2}, LfV;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "cr_WebApk"

    const-string v1, "WebApkAPI use failed."

    .line 4
    invoke-static {p1, v1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
