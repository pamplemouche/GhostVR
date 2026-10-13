.class public LrS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public w:LwS;

.field public final synthetic x:LuS;


# direct methods
.method public synthetic constructor <init>(LuS;LwS;LpS;)V
    .locals 0

    .line 1
    iput-object p1, p0, LrS;->x:LuS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LrS;->w:LwS;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LrS;->x:LuS;

    iget-object v1, p0, LrS;->w:LwS;

    .line 2
    iget-object v0, v0, LuS;->g:Ljava/lang/String;

    check-cast v1, LiS;

    const-string v2, "pk"

    .line 3
    invoke-virtual {v1, v2, v0}, LiS;->a(Ljava/lang/String;Ljava/lang/String;)LiS;

    .line 4
    iget-object v0, p0, LrS;->w:LwS;

    const-string v1, "DefaultAnalyticsLogger"

    const-string v2, "New event %s."

    invoke-static {v1, v2, v0}, LgS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, LrS;->x:LuS;

    .line 6
    iget-object v0, v0, LuS;->i:LkS;

    .line 7
    iget-object v1, p0, LrS;->w:LwS;

    .line 8
    iget-object v0, v0, LkS;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, LrS;->x:LuS;

    .line 10
    iget-object v0, v0, LuS;->k:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object v0, p0, LrS;->x:LuS;

    .line 13
    iget-object v0, v0, LuS;->i:LkS;

    .line 14
    iget-object v0, v0, LkS;->j:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    .line 16
    iget-object v0, p0, LrS;->x:LuS;

    invoke-virtual {v0}, LuS;->a()V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, LrS;->x:LuS;

    .line 18
    iget-object v0, v0, LuS;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
