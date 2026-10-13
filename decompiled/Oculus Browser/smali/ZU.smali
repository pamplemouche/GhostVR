.class public LZU;
.super LWU;
.source "PG"


# instance fields
.field public final d:Ljava/util/List;

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LWU;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZU;->d:Ljava/util/List;

    .line 3
    iput p2, p0, LZU;->e:I

    .line 4
    iput p3, p0, LZU;->f:I

    .line 5
    iput p4, p0, LZU;->g:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

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
    iget-object v1, p0, LWU;->a:Ljava/lang/String;

    iget v2, p0, LZU;->e:I

    iget v3, p0, LZU;->f:I

    iget v4, p0, LZU;->g:I

    invoke-static {v1, p1, v2, v3, v4}, LfV;->a(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, LZU;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, LWU;->a()V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, LZU;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    iget-object v2, p0, LWU;->a:Ljava/lang/String;

    iget v3, p0, LZU;->e:I

    iget v4, p0, LZU;->f:I

    iget v5, p0, LZU;->g:I

    invoke-static {v2, v1, v3, v4, v5}, LfV;->a(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LZU;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
