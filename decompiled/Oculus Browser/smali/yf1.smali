.class public final synthetic Lyf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:LGf1;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:LEf1;


# direct methods
.method public constructor <init>(LGf1;Ljava/lang/String;Landroid/content/Context;LEf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf1;->a:LGf1;

    iput-object p2, p0, Lyf1;->b:Ljava/lang/String;

    iput-object p3, p0, Lyf1;->c:Landroid/content/Context;

    iput-object p4, p0, Lyf1;->d:LEf1;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lyf1;->a:LGf1;

    iget-object v1, p0, Lyf1;->b:Ljava/lang/String;

    iget-object v2, p0, Lyf1;->c:Landroid/content/Context;

    iget-object v3, p0, Lyf1;->d:LEf1;

    if-eqz v0, :cond_3

    .line 1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v5, v0, LGf1;->a:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    :cond_0
    iget-object v0, v0, LGf1;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_1
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-virtual {v2, v4, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "cr_WebApkService"

    const-string v2, "Security exception binding."

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 10
    throw v0
.end method
