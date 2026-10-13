.class public LdV;
.super LWU;
.source "PG"


# instance fields
.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LWU;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LdV;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    sget-object v0, LWU;->c:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 4
    iget-boolean v1, v1, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, LdV;->b(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, LdV;->d:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, LWU;->a()V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, LdV;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LdV;->b(J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LdV;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LWU;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LfV;->c(Ljava/lang/String;J)V

    return-void
.end method
