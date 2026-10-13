.class public abstract LIj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltj0;
.implements Ldj0;
.implements LUj;


# static fields
.field public static final g:Ljava/util/List;


# instance fields
.field public final a:Lrb;

.field public final b:Lrj0;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public e:Landroid/os/Handler;

.field public f:LVj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, LIj0;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lrb;Lrj0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LIj0;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LIj0;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LIj0;->e:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, LIj0;->a:Lrb;

    .line 6
    iput-object p2, p0, LIj0;->b:Lrj0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lej0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 23
    iget-object v0, p0, LIj0;->f:LVj0;

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object v0

    invoke-virtual {v0}, LGj0;->h()V

    .line 25
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object v0

    invoke-virtual {v0}, LGj0;->a()V

    .line 26
    iget-object v0, p0, LIj0;->a:Lrb;

    .line 27
    invoke-virtual {v0}, Lrb;->a()Lqb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrb;->a(Lqb;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v1}, LIj0;->d(Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, LIj0;->b:Lrj0;

    invoke-interface {v2, v1}, Lrj0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v0

    invoke-virtual {v0}, LJj;->b()LTj;

    move-result-object v0

    const-class v1, LOj;

    if-eqz v0, :cond_3

    .line 33
    invoke-static {v1}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Must be called from the main thread."

    .line 34
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v0, v0, LTj;->a:Lul;

    new-instance v2, LXk;

    invoke-direct {v2, p0, v1}, LXk;-><init>(LUj;Ljava/lang/Class;)V

    check-cast v0, Lvl;

    .line 36
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 37
    invoke-static {v1, v2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v2, 0x3

    .line 38
    invoke-virtual {v0, v2, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 39
    sget-object v0, LTj;->b:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "removeSessionManagerListener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lul;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Unable to call %s on %s."

    .line 42
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 43
    throw v0
.end method

.method public a(LOj;Ljava/lang/String;)V
    .locals 6

    .line 14
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object p2

    invoke-virtual {p2, p1}, LGj0;->a(LOj;)V

    .line 15
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object p1

    invoke-virtual {p1}, LGj0;->i()V

    .line 16
    iget-object p1, p0, LIj0;->f:LVj0;

    iget-object p2, p1, LVj0;->b:Luj0;

    .line 17
    iget-object p1, p1, LVj0;->a:Lvj0;

    .line 18
    new-instance v1, Lfj0;

    .line 19
    iget-object p2, p2, Luj0;->a:Ljava/lang/String;

    .line 20
    invoke-interface {p1}, Lvj0;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LIj0;->f:LVj0;

    iget-object v0, v0, LVj0;->c:Ljava/lang/String;

    invoke-direct {v1, p2, p1, v0}, Lfj0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, LIj0;->f:LVj0;

    iget-object v2, p1, LVj0;->d:Ljava/lang/String;

    iget v3, p1, LVj0;->e:I

    iget v4, p1, LVj0;->g:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LIj0;->a(Lfj0;Ljava/lang/String;IIZ)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, LIj0;->f:LVj0;

    return-void
.end method

.method public a(LSj;)V
    .locals 0

    .line 9
    check-cast p1, LOj;

    return-void
.end method

.method public a(LSj;I)V
    .locals 0

    .line 10
    check-cast p1, LOj;

    .line 11
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object p1

    invoke-virtual {p1}, LGj0;->a()V

    return-void
.end method

.method public a(LSj;Ljava/lang/String;)V
    .locals 1

    .line 3
    check-cast p1, LOj;

    .line 4
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v0

    invoke-virtual {v0}, LJj;->b()LTj;

    move-result-object v0

    invoke-virtual {v0}, LTj;->a()LOj;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object v0

    .line 6
    iget-object v0, v0, LGj0;->b:LOj;

    if-eq p1, v0, :cond_2

    .line 7
    iget-object v0, p0, LIj0;->f:LVj0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, LIj0;->a(LOj;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(LSj;Z)V
    .locals 0

    .line 1
    check-cast p1, LOj;

    .line 2
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object p2

    invoke-virtual {p2, p1}, LGj0;->a(LOj;)V

    return-void
.end method

.method public a(Lfj0;Ljava/lang/String;IIZ)V
    .locals 6

    .line 44
    iget-object p2, p0, LIj0;->d:Ljava/util/Map;

    iget-object p3, p1, Lfj0;->a:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, LIj0;->b:Lrj0;

    iget-object v1, p1, Lfj0;->a:Ljava/lang/String;

    iget-object v2, p1, Lfj0;->b:Ljava/lang/String;

    move v3, p4

    move-object v4, p0

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lrj0;->a(Ljava/lang/String;Ljava/lang/String;ILtj0;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    iget-object v0, p0, LIj0;->e:Landroid/os/Handler;

    new-instance v1, LHj0;

    invoke-direct {v1, p0, p1, p2}, LHj0;-><init>(LIj0;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract b()LGj0;
.end method

.method public b(LSj;)V
    .locals 0

    .line 1
    check-cast p1, LOj;

    .line 2
    invoke-virtual {p0}, LIj0;->a()V

    return-void
.end method

.method public b(LSj;I)V
    .locals 1

    .line 4
    check-cast p1, LOj;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, "Launch error"

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p2, v0}, LIj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, LIj0;->f:LVj0;

    if-nez p1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, LIj0;->b:Lrj0;

    iget p1, p1, LVj0;->g:I

    invoke-interface {p2, v0, p1}, Lrj0;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, LIj0;->f:LVj0;

    :goto_1
    return-void
.end method

.method public b(LSj;Ljava/lang/String;)V
    .locals 0

    .line 3
    check-cast p1, LOj;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfj0;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object v0

    invoke-virtual {v0}, LGj0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1}, LIj0;->d(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, LIj0;->b:Lrj0;

    invoke-interface {v1, p1, v0}, Lrj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, LIj0;->b()LGj0;

    move-result-object p1

    invoke-virtual {p1}, LGj0;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, LIj0;->d(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, LIj0;->b:Lrj0;

    invoke-interface {v0, p1, p2}, Lrj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract c(Ljava/lang/String;)Lvj0;
.end method

.method public c(LSj;I)V
    .locals 0

    .line 1
    check-cast p1, LOj;

    .line 2
    invoke-virtual {p0}, LIj0;->a()V

    return-void
.end method

.method public d(LSj;I)V
    .locals 0

    .line 1
    check-cast p1, LOj;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
