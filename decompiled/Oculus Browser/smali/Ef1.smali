.class public LEf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:LGf1;

.field public b:Ljava/util/ArrayList;

.field public c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(LGf1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEf1;->b:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, LEf1;->a:LGf1;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iput-object p2, p0, LEf1;->c:Landroid/os/IBinder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "Got IBinder Service: %s"

    .line 2
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, LEf1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LFf1;

    .line 4
    iget-object v0, p0, LEf1;->c:Landroid/os/IBinder;

    invoke-interface {p2, v0}, LFf1;->a(Landroid/os/IBinder;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LEf1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LEf1;->c:Landroid/os/IBinder;

    .line 2
    iget-object v1, p0, LEf1;->a:LGf1;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v2, v1, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v1, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v1, LGf1;->e:I

    if-nez p1, :cond_1

    .line 5
    iget-object p1, v1, LGf1;->d:LCW;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, LCW;->destroy()V

    .line 7
    iput-object v0, v1, LGf1;->d:LCW;

    :cond_1
    :goto_0
    return-void
.end method
