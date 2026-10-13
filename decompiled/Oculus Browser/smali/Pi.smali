.class public LPi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:LUi;

.field public b:Ljava/util/List;

.field public final c:Landroid/net/Uri;

.field public final synthetic d:LSi;


# direct methods
.method public constructor <init>(LSi;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPi;->d:LSi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, LPi;->b:Ljava/util/List;

    .line 3
    iput-object p2, p0, LPi;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, LUi;

    .line 2
    invoke-static {p2}, LH;->a(Landroid/os/IBinder;)LI;

    move-result-object p2

    invoke-direct {v0, p2, p1}, LUi;-><init>(LI;Landroid/content/ComponentName;)V

    iput-object v0, p0, LPi;->a:LUi;

    .line 3
    iget-object p1, p0, LPi;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LRi;

    .line 4
    iget-object v0, p0, LPi;->a:LUi;

    check-cast p2, LNi;

    invoke-virtual {p2, v0}, LNi;->a(LUi;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LPi;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, LPi;->a:LUi;

    .line 2
    iget-object p1, p0, LPi;->d:LSi;

    iget-object p1, p1, LSi;->b:Ljava/util/Map;

    iget-object v0, p0, LPi;->c:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
