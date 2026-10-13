.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:J

.field public c:Z

.field public final d:Ljava/util/List;

.field public final e:LWT;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    .line 3
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    .line 4
    invoke-static {p0, p1}, LJ/N;->MTRUIEfD(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->MHTPaGlQ(JLjava/lang/Object;)Z

    move-result p1

    .line 8
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-static {p0, v1}, LJ/N;->MUjtS5c8(Ljava/lang/Object;Z)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static addToBookmarkIdList(Ljava/util/List;JI)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addToBookmarkIdListWithDepth(Ljava/util/List;JILjava/util/List;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addToList(Ljava/util/List;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bookmarkAllUserNodesRemoved()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP10;

    .line 2
    invoke-virtual {v1}, LP10;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkModelChanged()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP10;

    .line 3
    invoke-virtual {v1}, LP10;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bookmarkModelDeleted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a()V

    return-void
.end method

.method private bookmarkModelLoaded()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP10;

    .line 4
    invoke-virtual {v3}, LP10;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 7
    iget-object v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ10;

    .line 8
    iget v4, v3, LQ10;->c:I

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v9, v3, LQ10;->d:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iget-object v4, v3, LQ10;->b:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v3, v3, LQ10;->a:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

    .line 10
    iget-boolean v5, v9, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    if-eqz v5, :cond_2

    .line 11
    iget-wide v5, v9, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v9

    move-object v8, v4

    move-object v9, v3

    .line 12
    invoke-static/range {v5 .. v10}, LJ/N;->MbzcH$4D(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v11, v9, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    new-instance v12, LQ10;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, v4

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, LQ10;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;LO10;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    iget-object v4, v3, LQ10;->d:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;

    iget-object v5, v3, LQ10;->b:Lorg/chromium/components/bookmarks/BookmarkId;

    iget-object v3, v3, LQ10;->a:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;

    .line 15
    iget-boolean v6, v4, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    if-eqz v6, :cond_4

    .line 16
    iget-wide v13, v4, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    .line 17
    invoke-static/range {v13 .. v18}, LJ/N;->M4_aKMtg(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object v6, v4, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    new-instance v7, LQ10;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v13, v7

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v18}, LQ10;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarksCallback;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge;LO10;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    return-void
.end method

.method private bookmarkNodeAdded(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP10;

    .line 3
    invoke-virtual {p2}, LP10;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bookmarkNodeChanged(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP10;

    .line 3
    invoke-virtual {v0}, LP10;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bookmarkNodeChildrenReordered(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP10;

    .line 3
    invoke-virtual {v0}, LP10;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bookmarkNodeMoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP10;

    .line 3
    invoke-virtual {p2}, LP10;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private bookmarkNodeRemoved(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;ILorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP10;

    .line 2
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, LP10;->a()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_2
    return-void
.end method

.method public static createBookmarkItem(JILjava/lang/String;Ljava/lang/String;ZJIZZ)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 10

    .line 1
    new-instance v9, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    new-instance v1, Lorg/chromium/components/bookmarks/BookmarkId;

    move-wide v2, p0

    move v0, p2

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    new-instance v5, Lorg/chromium/components/bookmarks/BookmarkId;

    move-wide/from16 v2, p6

    move/from16 v0, p8

    invoke-direct {v5, v2, v3, v0}, Lorg/chromium/components/bookmarks/BookmarkId;-><init>(JI)V

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;-><init>(Lorg/chromium/components/bookmarks/BookmarkId;Ljava/lang/String;Ljava/lang/String;ZLorg/chromium/components/bookmarks/BookmarkId;ZZLO10;)V

    return-object v9
.end method

.method private editBookmarksEnabledChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP10;

    .line 2
    invoke-virtual {v1}, LP10;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extensiveBookmarkChangesBeginning()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    return-void
.end method

.method private extensiveBookmarkChangesEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a:Z

    .line 2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->bookmarkModelChanged()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    .line 6
    invoke-static {v0, v1, p0}, LJ/N;->M$aEU5TZ(JLjava/lang/Object;)V

    .line 7
    iput-wide v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 7

    .line 11
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v1

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 14
    new-instance v0, LO10;

    invoke-direct {v0, p0, v2, v3, p1}, LO10;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;JLjava/lang/Runnable;)V

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->e:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 17
    sget-boolean v0, Lnt0;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    sput-boolean v1, Lnt0;->a:Z

    .line 19
    new-instance v0, Lmt0;

    invoke-direct {v0, p1}, Lmt0;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    .line 21
    invoke-virtual {v0}, Lmt0;->a()V

    goto :goto_0

    .line 22
    :cond_3
    iget-wide v3, v0, Lmt0;->b:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    goto :goto_0

    .line 23
    :cond_4
    new-instance p1, Llt0;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Llt0;-><init>(Lmt0;Ljt0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->c:Z

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    .line 2
    invoke-static {v0, v1}, LJ/N;->M9xtlU8J(J)Z

    move-result v0

    return v0
.end method
