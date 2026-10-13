.class public LkI0;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;
.source "PG"


# instance fields
.field public final h:Ljava/util/List;

.field public final i:LbI0;

.field public final j:LbI0;

.field public final k:LEI0;

.field public final l:LmI0;

.field public final m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

.field public final n:LYI0;

.field public final o:LfI0;

.field public final p:LWT;

.field public q:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

.field public final r:LjI0;

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(ZZLbI0;LbI0;LEI0;LmI0;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;LYI0;LfI0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;-><init>(ZZ)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LkI0;->h:Ljava/util/List;

    .line 3
    new-instance p1, LjI0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LjI0;-><init>(LkI0;LiI0;)V

    iput-object p1, p0, LkI0;->r:LjI0;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, LkI0;->s:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LkI0;->t:Z

    .line 6
    iput-object p3, p0, LkI0;->i:LbI0;

    .line 7
    iput-object p4, p0, LkI0;->j:LbI0;

    .line 8
    iput-object p5, p0, LkI0;->k:LEI0;

    .line 9
    iput-object p6, p0, LkI0;->l:LmI0;

    .line 10
    iput-object p7, p0, LkI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    .line 11
    iput-object p8, p0, LkI0;->n:LYI0;

    .line 12
    iput-object p9, p0, LkI0;->o:LfI0;

    .line 13
    iput-boolean p10, p0, LkI0;->t:Z

    .line 14
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, LkI0;->p:LWT;

    .line 15
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    iget-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->c:Z

    .line 16
    invoke-static {p0, p1, p2}, LJ/N;->M15HofTq(Ljava/lang/Object;ZZ)J

    move-result-wide p1

    .line 17
    iput-wide p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    .line 18
    new-instance p1, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object p1, p0, LkI0;->q:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    return-void
.end method


# virtual methods
.method public a(Z)LbI0;
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, LkI0;->j:LbI0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LkI0;->i:LbI0;

    :goto_0
    return-object p1
.end method

.method public a(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 6

    .line 15
    invoke-static {p0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 16
    invoke-static {p0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, LkI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    .line 18
    :goto_0
    invoke-virtual {p0, v1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    .line 19
    iget v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 20
    iget-object v4, p0, LkI0;->o:LfI0;

    .line 21
    iget-boolean v5, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    .line 22
    check-cast v4, LrI0;

    invoke-virtual {v4, v5}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    invoke-static {v4, v3}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v2, v4

    goto :goto_1

    .line 23
    :cond_2
    iget-object v4, p0, LkI0;->o:LfI0;

    .line 24
    iget-boolean v5, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    xor-int/2addr v2, v5

    .line 25
    check-cast v4, LrI0;

    invoke-virtual {v4, v2}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v2

    invoke-static {v2, v3}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 26
    :goto_1
    invoke-virtual {p0}, LkI0;->isCurrentModel()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 27
    iget-object p1, p0, LkI0;->o:LfI0;

    check-cast p1, LrI0;

    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-static {p1}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eq p1, v0, :cond_4

    if-eqz v0, :cond_4

    .line 28
    iget-boolean p1, v0, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    .line 29
    iget-boolean p1, v2, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez p1, :cond_6

    .line 30
    iget-object p1, p0, LkI0;->o:LfI0;

    .line 31
    check-cast p1, LwI0;

    if-eqz p1, :cond_5

    move-object v0, v2

    goto :goto_2

    .line 32
    :cond_5
    throw v4

    :cond_6
    if-eqz v1, :cond_7

    .line 33
    iget-boolean p1, v1, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez p1, :cond_7

    move-object v0, v1

    goto :goto_2

    .line 34
    :cond_7
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-eqz p1, :cond_8

    .line 35
    iget-object p1, p0, LkI0;->o:LfI0;

    const/4 v0, 0x0

    check-cast p1, LrI0;

    invoke-virtual {p1, v0}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-static {p1}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_9

    .line 36
    iget-boolean p1, v0, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-eqz p1, :cond_9

    move-object v0, v4

    :cond_9
    return-object v0
.end method

.method public a(II)V
    .locals 3

    .line 2
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, LEO0;->a(III)I

    move-result p2

    .line 3
    invoke-static {p0, p1}, LFI0;->b(LdI0;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eq p1, p2, :cond_5

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, LkI0;->d()V

    .line 5
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    if-ge p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 6
    :cond_1
    iget-object v1, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    iget v1, p0, LkI0;->s:I

    if-ne p1, v1, :cond_2

    .line 8
    iput p2, p0, LkI0;->s:I

    goto :goto_0

    :cond_2
    if-ge p1, v1, :cond_3

    if-lt p2, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 9
    iput v1, p0, LkI0;->s:I

    goto :goto_0

    .line 10
    :cond_3
    iget v1, p0, LkI0;->s:I

    if-le p1, v1, :cond_4

    if-gt p2, v1, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, p0, LkI0;->s:I

    .line 12
    :cond_4
    :goto_0
    iget-object v1, p0, LkI0;->r:LjI0;

    invoke-virtual {v1}, LjI0;->f()V

    .line 13
    iget-object v1, p0, LkI0;->p:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LlI0;

    invoke-interface {v2, v0, p2, p1}, LlI0;->didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public a(LlI0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 4

    const-string v0, "TabModelImpl.addTab"

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, LkI0;->p:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LlI0;

    invoke-interface {v2, p1, p3}, LlI0;->willAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, LkI0;->l:LmI0;

    .line 48
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    check-cast v1, LnI0;

    :try_start_1
    invoke-virtual {v1, p3, v2}, LnI0;->a(IZ)Z

    move-result v1

    .line 50
    iget-object v2, p0, LkI0;->l:LmI0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v2, LnI0;

    :try_start_2
    invoke-virtual {v2, p3, p2, p1}, LnI0;->a(IILorg/chromium/chrome/browser/tab/Tab;)I

    move-result p2

    .line 51
    iget-boolean v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 52
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-ne v2, v3, :cond_8

    .line 53
    invoke-virtual {p0}, LkI0;->d()V

    if-ltz p2, :cond_2

    .line 54
    iget-object v2, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    iget-object v2, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v2, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    iget v2, p0, LkI0;->s:I

    if-gt p2, v2, :cond_3

    .line 57
    iget p2, p0, LkI0;->s:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LkI0;->s:I

    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    iget-object p2, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_3
    :goto_2
    invoke-virtual {p0}, LkI0;->isCurrentModel()Z

    move-result p2

    if-nez p2, :cond_4

    .line 60
    iget p2, p0, LkI0;->s:I

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, LkI0;->s:I

    .line 61
    :cond_4
    iget-object p2, p0, LkI0;->r:LjI0;

    invoke-virtual {p2}, LjI0;->f()V

    .line 62
    invoke-virtual {p0, p1}, LkI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p2

    .line 63
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    iget-wide v2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    .line 65
    invoke-static {v2, v3, p0, p1}, LJ/N;->M2Pb3$9r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    :cond_5
    iget-object v2, p0, LkI0;->p:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LlI0;

    invoke-interface {v3, p1, p3}, LlI0;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, p2, p1}, LkI0;->b(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :cond_7
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_8
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to open tab in wrong model"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 70
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;IZZ)V
    .locals 4

    .line 100
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 101
    invoke-virtual {p0, p1}, LkI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result v1

    .line 102
    invoke-static {p0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 103
    :goto_0
    invoke-virtual {p0, v1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-nez p2, :cond_1

    .line 104
    invoke-virtual {p0, v0}, LkI0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    :cond_1
    if-eqz p5, :cond_2

    .line 105
    invoke-virtual {p0}, LkI0;->d()V

    :cond_2
    if-eqz p4, :cond_3

    .line 106
    iget-object p4, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p4, :cond_3

    .line 107
    invoke-interface {p4}, Lorg/chromium/content_public/browser/WebContents;->E()V

    .line 108
    invoke-interface {p4, v3}, Lorg/chromium/content_public/browser/WebContents;->a(Z)V

    .line 109
    :cond_3
    iget-object p4, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    .line 110
    :cond_4
    iget-boolean p1, p2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    :goto_1
    const/4 p4, -0x1

    if-nez p2, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    :goto_2
    if-nez p2, :cond_6

    goto :goto_3

    .line 112
    :cond_6
    iget-object p4, p0, LkI0;->o:LfI0;

    .line 113
    check-cast p4, LrI0;

    invoke-virtual {p4, p1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p4

    .line 114
    invoke-static {p4, v0}, LFI0;->b(LdI0;I)I

    move-result p4

    :goto_3
    if-eq p2, v2, :cond_8

    .line 115
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-eq p1, p2, :cond_7

    .line 116
    invoke-virtual {p0, v1}, LkI0;->b(Lorg/chromium/chrome/browser/tab/Tab;)I

    move-result p2

    iput p2, p0, LkI0;->s:I

    .line 117
    :cond_7
    iget-object p2, p0, LkI0;->o:LfI0;

    check-cast p2, LrI0;

    invoke-virtual {p2, p1}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    .line 118
    invoke-interface {p1, p4, p3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    goto :goto_4

    .line 119
    :cond_8
    iput p4, p0, LkI0;->s:I

    :goto_4
    if-eqz p5, :cond_9

    .line 120
    iget-object p1, p0, LkI0;->r:LjI0;

    invoke-virtual {p1}, LjI0;->f()V

    :cond_9
    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 7

    .line 121
    iget-object v0, p0, LkI0;->m:Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;->a(I)V

    .line 122
    :cond_0
    iget-object v0, p0, LkI0;->n:LYI0;

    .line 123
    iget-object v1, v0, LYI0;->e:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, v0, LYI0;->f:Ljava/util/Deque;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    .line 125
    iget-object v3, v0, LYI0;->f:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXI0;

    .line 126
    iget v6, v4, LXI0;->a:I

    if-ne v6, v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 127
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, v0, LYI0;->h:LQI0;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, LQI0;->a:LXI0;

    iget v1, v1, LXI0;->a:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 129
    iget-object v1, v0, LYI0;->h:LQI0;

    invoke-virtual {v1, v2}, LkW;->cancel(Z)Z

    .line 130
    iput-object v5, v0, LYI0;->h:LQI0;

    .line 131
    invoke-virtual {v0}, LYI0;->c()V

    .line 132
    :cond_3
    iget-object v1, v0, LYI0;->i:LTI0;

    if-eqz v1, :cond_4

    iget v1, v1, LTI0;->b:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 133
    iget-object v1, v0, LYI0;->i:LTI0;

    invoke-virtual {v1, v2}, LkW;->cancel(Z)Z

    .line 134
    iput-object v5, v0, LYI0;->i:LTI0;

    .line 135
    invoke-virtual {v0}, LYI0;->d()V

    .line 136
    :cond_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    .line 137
    iget-boolean v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 138
    invoke-static {v1, v2}, LtH0;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LYI0;->a(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-nez v0, :cond_6

    .line 140
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 141
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 142
    invoke-static {v0}, LJ/N;->MgW5XdfE(Ljava/lang/Object;)V

    goto :goto_1

    .line 143
    :cond_5
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    if-eqz v0, :cond_6

    .line 144
    iget-object v1, v0, LsH0;->a:Ljava/nio/ByteBuffer;

    .line 145
    iget v0, v0, LsH0;->b:I

    .line 146
    invoke-static {v1, v0}, LJ/N;->MJZmKGx8(Ljava/lang/Object;I)V

    .line 147
    :cond_6
    :goto_1
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    .line 148
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 149
    invoke-interface {v1, v2, v3}, LlI0;->didCloseTab(IZ)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 150
    iget-object p2, p0, LkI0;->p:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlI0;

    invoke-interface {v0, p1}, LlI0;->tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    return-void
.end method

.method public a(ZZ)V
    .locals 10

    .line 71
    iget-object v0, p0, LkI0;->n:LYI0;

    .line 72
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 73
    iput-boolean v2, v0, LYI0;->m:Z

    goto :goto_0

    .line 74
    :cond_0
    iput-boolean v2, v0, LYI0;->l:Z

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 75
    invoke-virtual {p0}, LkI0;->d()V

    const/4 p1, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/tab/Tab;->c(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    :goto_2
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 78
    invoke-virtual {p0, v0}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 79
    :cond_2
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 80
    iget-object p1, p0, LkI0;->o:LfI0;

    check-cast p1, LwI0;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 81
    throw p2

    .line 82
    :cond_5
    throw p2

    .line 83
    :cond_6
    invoke-static {}, Lpt0;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 84
    invoke-static {}, Lpt0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LMm0;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_b

    .line 85
    invoke-virtual {p0}, LkI0;->d()V

    const/4 p1, 0x0

    .line 86
    :goto_4
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_8

    invoke-virtual {p0, p1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/tab/Tab;->c(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 87
    :cond_8
    :goto_5
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 88
    invoke-virtual {p0, v0}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5

    .line 89
    :cond_9
    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    goto :goto_5

    :cond_a
    return-void

    .line 90
    :cond_b
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->d()Z

    move-result p1

    xor-int/2addr p1, v2

    const/4 p2, 0x0

    .line 91
    :goto_6
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_c

    invoke-virtual {p0, p2}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->c(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 92
    :cond_c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    :goto_7
    invoke-virtual {p0}, LkI0;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 94
    invoke-virtual {p0, v0}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    .line 95
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move v6, p1

    .line 96
    invoke-virtual/range {v3 .. v9}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z

    goto :goto_7

    .line 97
    :cond_d
    invoke-virtual {p0}, LkI0;->f()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 98
    iget-object p1, p0, LkI0;->p:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LlI0;

    .line 99
    invoke-interface {v0, p2, v2}, LlI0;->multipleTabsPendingClosure(Ljava/util/List;Z)V

    goto :goto_8

    :cond_e
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1, v0, v0}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result p1

    return p1
.end method

.method public final a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    iget-object v1, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 39
    :cond_1
    invoke-virtual {p0}, LkI0;->f()Z

    move-result v1

    and-int/2addr p5, v1

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/tab/Tab;->c(Z)V

    .line 41
    iget-object v2, p0, LkI0;->p:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LlI0;

    invoke-interface {v3, p1, p3}, LlI0;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_2
    xor-int/lit8 v7, p5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    .line 42
    invoke-virtual/range {v2 .. v7}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;IZZ)V

    if-eqz p6, :cond_3

    if-eqz p5, :cond_3

    .line 43
    iget-object p2, p0, LkI0;->p:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LlI0;

    invoke-interface {p3, p1}, LlI0;->tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_1

    :cond_3
    if-nez p5, :cond_4

    .line 44
    invoke-virtual {p0, p1, v0}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    :cond_4
    return v1
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p4

    .line 37
    invoke-virtual/range {v0 .. v6}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;ZZZZ)Z

    move-result p1

    return p1
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 40
    :cond_0
    iget-object v1, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public b(I)V
    .locals 8

    .line 2
    iget-object v0, p0, LkI0;->r:LjI0;

    invoke-virtual {v0, p1}, LjI0;->e(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->c(Z)V

    .line 4
    iget-object v1, p0, LkI0;->r:LjI0;

    .line 5
    iget-object v1, v1, LjI0;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_3

    .line 6
    iget-object v5, p0, LkI0;->r:LjI0;

    invoke-virtual {v5, v3}, LjI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v5

    .line 7
    iget-object v6, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v6, p0, LkI0;->h:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 9
    iget v1, p0, LkI0;->s:I

    if-lt v1, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LkI0;->s:I

    .line 10
    :cond_4
    iget-object v1, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/WebContents;->a(Z)V

    .line 13
    :cond_5
    invoke-virtual {p0}, LkI0;->isCurrentModel()Z

    move-result v0

    .line 14
    iget v1, p0, LkI0;->s:I

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    .line 15
    invoke-interface {p0, v4, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    goto :goto_2

    .line 16
    :cond_6
    iput v4, p0, LkI0;->s:I

    .line 17
    :cond_7
    :goto_2
    iget-object v0, p0, LkI0;->n:LYI0;

    invoke-virtual {v0}, LYI0;->e()V

    .line 18
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-interface {v1, p1}, LlI0;->tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public b(II)V
    .locals 8

    const-string v0, "TabModelImpl.setIndex"

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v4, p0, LkI0;->o:LfI0;

    check-cast v4, LrI0;

    invoke-virtual {v4}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v4

    invoke-static {v4}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, -0x1

    .line 22
    :goto_1
    invoke-virtual {p0}, LkI0;->isCurrentModel()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, LkI0;->o:LfI0;

    .line 23
    iget-boolean v6, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    check-cast v5, LwI0;

    :try_start_1
    invoke-virtual {v5, v6}, LwI0;->a(Z)V

    .line 25
    :cond_2
    iget-object v5, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-gtz v5, :cond_4

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 26
    :goto_2
    iget-object v7, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 27
    iget-object v7, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/chrome/browser/tab/Tab;

    .line 28
    iget-boolean v7, v7, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez v7, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :goto_3
    if-nez v5, :cond_6

    .line 29
    iput v2, p0, LkI0;->s:I

    goto :goto_4

    .line 30
    :cond_6
    iget-object v2, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {p1, v6, v2}, LEO0;->a(III)I

    move-result p1

    iput p1, p0, LkI0;->s:I

    .line 31
    :goto_4
    invoke-static {p0}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 32
    iget-object v2, p0, LkI0;->o:LfI0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v2, LwI0;

    :try_start_2
    invoke-virtual {v2, p1, p2}, LwI0;->a(Lorg/chromium/chrome/browser/tab/Tab;I)V

    if-eqz p1, :cond_a

    .line 33
    iget-object v2, p0, LkI0;->p:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LlI0;

    invoke-interface {v5, p1, p2, v4}, LlI0;->didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    if-ne p1, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_a

    const/4 p1, 0x3

    if-ne p2, p1, :cond_a

    .line 35
    iget-object p1, p0, LkI0;->k:LEI0;

    if-eqz p1, :cond_a

    .line 36
    iget-object p1, p0, LkI0;->k:LEI0;

    if-eqz p1, :cond_9

    const-string p1, "MobileTabSwitched"

    .line 37
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 38
    :cond_9
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_a
    :goto_7
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LlI0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;IZZ)V

    .line 2
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-interface {v1, p1}, LlI0;->tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 3
    iget-object v0, p0, LkI0;->r:LjI0;

    invoke-virtual {v0, p1}, LjI0;->e(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeTabAt(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-virtual {p0, p1}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p1

    return p1
.end method

.method public createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, LkI0;->j:LbI0;

    goto :goto_0

    :cond_0
    iget-object p2, p0, LkI0;->i:LbI0;

    :goto_0
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p2, p1, p3, v0}, LbI0;->createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;I)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 6

    .line 5
    :goto_0
    iget-object v0, p0, LkI0;->r:LjI0;

    invoke-virtual {v0}, LjI0;->getCount()I

    move-result v0

    iget-object v1, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 6
    iget-object v0, p0, LkI0;->r:LjI0;

    .line 7
    invoke-virtual {v0}, LjI0;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v3, v0, LjI0;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 9
    iget-object v3, v0, LjI0;->b:LkI0;

    invoke-virtual {v3}, LkI0;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, v0, LjI0;->b:LkI0;

    invoke-virtual {v3, v1}, LkI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    .line 10
    :goto_2
    iget-object v4, v0, LjI0;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v3

    if-eq v5, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move-object v2, v4

    .line 12
    :cond_4
    :goto_4
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, LkI0;->d(I)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, LkI0;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-interface {v1}, LlI0;->allTabsClosureCommitted()V

    goto :goto_5

    :cond_6
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LkI0;->r:LjI0;

    invoke-virtual {v0, p1}, LjI0;->e(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LkI0;->r:LjI0;

    .line 3
    iget-object v0, v0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, LkI0;->a(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, LkI0;->r:LjI0;

    .line 4
    iget-object v0, v0, LjI0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    goto :goto_1

    .line 6
    :cond_3
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, LkI0;->p:LWT;

    invoke-virtual {v0}, LWT;->clear()V

    .line 8
    iget-object v0, p0, LkI0;->q:Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;

    .line 9
    iget-wide v1, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->a:J

    .line 10
    invoke-static {v1, v2, v0}, LJ/N;->MN6LZLAP(JLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->a:J

    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge;->b:Ljava/lang/Runnable;

    .line 13
    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->destroy()V

    return-void
.end method

.method public e()LdI0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LkI0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, LkI0;->r:LjI0;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, LkI0;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LkI0;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/tab/Tab;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget v0, p0, LkI0;->s:I

    return v0
.end method

.method public isCurrentModel()Z
    .locals 2

    .line 1
    iget-object v0, p0, LkI0;->o:LfI0;

    check-cast v0, LwI0;

    .line 2
    invoke-virtual {v0}, LrI0;->f()Z

    move-result v0

    .line 3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSessionRestoreInProgress()Z
    .locals 1

    .line 1
    iget-object v0, p0, LkI0;->o:LfI0;

    check-cast v0, LwI0;

    .line 2
    iget-object v0, v0, LwI0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public openNewTab(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZZ)V
    .locals 24

    move-object/from16 v0, p1

    move/from16 v1, p6

    .line 1
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v6, 0x5

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_2

    const/4 v6, 0x6

    if-eq v1, v6, :cond_3

    const/16 v6, 0x8

    if-eq v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    .line 3
    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v6, LVG0;->E:Ljava/lang/Class;

    invoke-virtual {v1, v6}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LVG0;

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    const/16 v21, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 5
    iget-object v15, v1, LVG0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    const/16 v16, 0x1

    .line 6
    new-instance v9, Lza0;

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object v7, v9

    move-object/from16 v8, p2

    move-object v5, v9

    move v9, v2

    invoke-direct/range {v7 .. v22}, Lza0;-><init>(Ljava/lang/String;ZLjava/lang/String;IZZLrH0;Lorg/chromium/chrome/browser/tab/Tab;ZZZLjava/lang/String;ZZLya0;)V

    .line 7
    iget-object v7, v1, LVG0;->B:Lxa0;

    invoke-virtual {v7, v5}, Lxa0;->a(Lza0;)I

    move-result v5

    iput v5, v1, LVG0;->y:I

    if-eq v5, v3, :cond_4

    const/16 v23, 0x1

    goto :goto_1

    :cond_4
    const/16 v23, 0x0

    :goto_1
    if-eqz v23, :cond_5

    return-void

    .line 8
    :cond_5
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    move-object/from16 v3, p2

    .line 9
    invoke-direct {v1, v3, v6}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    move-object/from16 v3, p3

    .line 10
    iput-object v3, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->b:Ljava/lang/String;

    move-object/from16 v3, p4

    .line 11
    iput-object v3, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    move-object/from16 v3, p5

    .line 12
    iput-object v3, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    move/from16 v3, p8

    .line 13
    iput-boolean v3, v1, Lorg/chromium/content_public/browser/LoadUrlParams;->m:Z

    move-object/from16 v3, p0

    .line 14
    invoke-virtual {v3, v2}, LkI0;->a(Z)LbI0;

    move-result-object v2

    if-eqz p7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v4, v0}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method
