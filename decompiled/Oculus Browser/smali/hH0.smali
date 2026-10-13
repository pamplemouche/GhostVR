.class public LhH0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Lorg/chromium/chrome/browser/tab/Tab;

.field public c:Z

.field public d:Lorg/chromium/ui/base/WindowAndroid;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Z

.field public h:Lorg/chromium/content_public/browser/LoadUrlParams;

.field public i:LeI0;

.field public j:Lorg/chromium/content_public/browser/WebContents;

.field public k:LlH0;

.field public l:Z

.field public m:LtH0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LhH0;->a:I

    return-void
.end method

.method public static a(Z)LhH0;
    .locals 1

    .line 42
    new-instance v0, LhH0;

    invoke-direct {v0}, LhH0;-><init>()V

    invoke-virtual {v0, p0}, LhH0;->a(I)LhH0;

    return-object v0
.end method


# virtual methods
.method public final a(I)LhH0;
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LhH0;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public a()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 14

    .line 1
    iget-object v0, p0, LhH0;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, LhH0;->g:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, LhH0;->g:Z

    .line 4
    :goto_0
    new-instance v0, Lorg/chromium/chrome/browser/tab/Tab;

    iget v2, p0, LhH0;->a:I

    iget-object v3, p0, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    iget-boolean v4, p0, LhH0;->c:Z

    iget-object v5, p0, LhH0;->e:Ljava/lang/Integer;

    iget-object v6, p0, LhH0;->i:LeI0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/tab/Tab;-><init>(ILorg/chromium/chrome/browser/tab/Tab;ZLjava/lang/Integer;LeI0;)V

    .line 5
    iget-object v1, p0, LhH0;->d:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 6
    iget-object v1, p0, LhH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v2, p0, LhH0;->f:Ljava/lang/Integer;

    iget-object v3, p0, LhH0;->h:Lorg/chromium/content_public/browser/LoadUrlParams;

    iget-object v4, p0, LhH0;->j:Lorg/chromium/content_public/browser/WebContents;

    iget-object v5, p0, LhH0;->k:LlH0;

    iget-boolean v6, p0, LhH0;->l:Z

    iget-object v7, p0, LhH0;->m:LtH0;

    const-string v8, "Tab.initialize"

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    .line 7
    :try_start_0
    invoke-static {v8, v11}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v12, v0, Lorg/chromium/chrome/browser/tab/Tab;->q:Ljava/lang/Integer;

    iput-object v12, v0, Lorg/chromium/chrome/browser/tab/Tab;->r:Ljava/lang/Integer;

    .line 9
    iput-object v3, v0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-eqz v3, :cond_1

    .line 10
    iget-object v3, v3, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Lorg/chromium/chrome/browser/tab/Tab;->u:Ljava/lang/String;

    .line 12
    :cond_1
    invoke-static {v0, v1, v2}, LmH0;->a(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Integer;)V

    if-eqz v7, :cond_2

    .line 13
    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/tab/Tab;->a(LtH0;)V

    .line 14
    :cond_2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    const-wide/16 v12, 0x0

    cmp-long v3, v1, v12

    if-nez v3, :cond_3

    .line 15
    invoke-static {v0}, LJ/N;->MoReEXNi(Ljava/lang/Object;)V

    .line 16
    :cond_3
    iput-object v5, v0, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 17
    invoke-static {}, LbD0;->a()LbD0;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 18
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->s:LsH0;

    if-nez v1, :cond_9

    .line 19
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->t:Lorg/chromium/content_public/browser/LoadUrlParams;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 20
    invoke-static {}, Li00;->a()Li00;

    move-result-object v2

    .line 21
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 22
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isCurrentlyACustomTab()Z

    move-result v4

    .line 23
    invoke-virtual {v2, v3, v6, v4}, Li00;->a(ZZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    if-nez v4, :cond_6

    .line 24
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 25
    invoke-static {v2, v6}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    .line 26
    :cond_6
    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/WebContents;)V

    if-nez v1, :cond_7

    .line 27
    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->x()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_7
    iget-wide v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    cmp-long v3, v1, v9

    if-nez v3, :cond_8

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 31
    :cond_8
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, v7}, LpH0;->onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V

    goto :goto_2

    .line 32
    :cond_9
    :goto_3
    iget-wide v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    cmp-long v3, v1, v9

    if-nez v3, :cond_a

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 34
    :cond_a
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, v7}, LpH0;->onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V

    goto :goto_4

    .line 35
    :cond_b
    invoke-static {v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_c
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 37
    iget-wide v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_d

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->A:J

    .line 39
    :cond_d
    iget-object v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LpH0;

    invoke-interface {v3, v0, v7}, LpH0;->onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V

    goto :goto_5

    .line 40
    :cond_e
    invoke-static {v8}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public b(I)LhH0;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LhH0;->e:Ljava/lang/Integer;

    return-object p0
.end method
