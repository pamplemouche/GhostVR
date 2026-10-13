.class public LUU;
.super LWU;
.source "PG"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LWU;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :goto_0
    iget v0, p0, LUU;->d:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, LWU;->a:Ljava/lang/String;

    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iget v0, p0, LUU;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LUU;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
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
    iget-object v1, p0, LWU;->a:Ljava/lang/String;

    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, LUU;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LUU;->d:I

    .line 7
    invoke-virtual {p0}, LWU;->a()V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
