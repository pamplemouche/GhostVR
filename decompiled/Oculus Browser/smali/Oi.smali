.class public LOi;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:LPi;

.field public final synthetic c:LRi;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:LSi;


# direct methods
.method public constructor <init>(LSi;Landroid/content/Intent;LPi;LRi;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOi;->e:LSi;

    iput-object p2, p0, LOi;->a:Landroid/content/Intent;

    iput-object p3, p0, LOi;->b:LPi;

    iput-object p4, p0, LOi;->c:LRi;

    iput-object p5, p0, LOi;->d:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, LOi;->e:LSi;

    iget-object v0, v0, LSi;->a:Landroid/content/Context;

    iget-object v1, p0, LOi;->a:Landroid/content/Intent;

    iget-object v2, p0, LOi;->b:LPi;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, LOi;->b:LPi;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LOi;->e:LSi;

    iget-object v0, v0, LSi;->a:Landroid/content/Context;

    iget-object v1, p0, LOi;->b:LPi;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TWAConnectionManager"

    const-string v2, "SecurityException while binding."

    .line 5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, LPi;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LOi;->c:LRi;

    const/4 v0, 0x0

    check-cast p1, LNi;

    invoke-virtual {p1, v0}, LNi;->a(LUi;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LOi;->e:LSi;

    iget-object v0, v0, LSi;->b:Ljava/util/Map;

    iget-object v1, p0, LOi;->d:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
