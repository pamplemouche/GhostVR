.class public Ljt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$FetchFaviconCallback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lmt0;


# direct methods
.method public constructor <init>(Lmt0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljt0;->b:Lmt0;

    iput-object p2, p0, Ljt0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconFetch()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljt0;->b:Lmt0;

    .line 2
    iget-object v0, v0, Lmt0;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ljt0;->b:Lmt0;

    .line 5
    iget v2, v1, Lmt0;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmt0;->e:I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFaviconFetched(I)V
    .locals 4

    const-string v0, "PartnerBookmark.FaviconThrottleFetchResult"

    const/16 v1, 0x8

    .line 1
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 2
    iget-object v0, p0, Ljt0;->b:Lmt0;

    .line 3
    iget-object v0, v0, Lmt0;->d:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 5
    :try_start_0
    iget-object v1, p0, Ljt0;->b:Lmt0;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lmt0;->g:Z

    .line 7
    sget-object v1, Lmt0;->i:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkt0;

    .line 9
    iget-object v3, p0, Ljt0;->a:Ljava/lang/String;

    .line 10
    invoke-static {v3}, LJ/N;->McXhQJZC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-interface {v2, v3}, Lkt0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Ljt0;->b:Lmt0;

    .line 13
    iget-object v1, v1, Lmt0;->a:Lht0;

    .line 14
    iget-object v2, p0, Ljt0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lht0;->a(Ljava/lang/String;I)V

    .line 15
    iget-object p1, p0, Ljt0;->b:Lmt0;

    .line 16
    iget v1, p1, Lmt0;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lmt0;->e:I

    .line 17
    iget-object p1, p0, Ljt0;->b:Lmt0;

    .line 18
    iget p1, p1, Lmt0;->e:I

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Ljt0;->b:Lmt0;

    .line 20
    iget-boolean p1, p1, Lmt0;->h:Z

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Ljt0;->b:Lmt0;

    invoke-virtual {p1}, Lmt0;->b()V

    .line 22
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
