.class public Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrj0;


# static fields
.field public static f:Lsj0;


# instance fields
.field public a:J

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Laj0;

    invoke-direct {v0}, Laj0;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->f:Lsj0;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->e:Ljava/util/Map;

    .line 6
    iput-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    return-void
.end method

.method public static a()Lrb;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, LqU;->close()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 5
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 6
    :try_start_4
    invoke-virtual {v1}, LqU;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 7
    :try_start_5
    sget-object v4, LRB;->a:LLB;

    invoke-virtual {v4, v2, v1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v0
.end method

.method public static create(J)Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;-><init>(J)V

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p0

    const p1, 0xc042c0

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/AppHooks;->a(I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p1, Ldm;->d:Ldm;

    .line 4
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1, v1, p0}, Ldm;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, LJj0;

    invoke-static {}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a()Lrb;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LJj0;-><init>(Lrb;Lrj0;)V

    .line 7
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a(Ltj0;)V

    .line 8
    new-instance p0, LXj0;

    .line 9
    invoke-static {}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a()Lrb;

    move-result-object p1

    invoke-direct {p0, p1, v0}, LXj0;-><init>(Lrb;Lrj0;)V

    .line 10
    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a(Ltj0;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 29
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 30
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    .line 31
    invoke-static {v0, v1, p0, p1}, LJ/N;->Mb6MktAa(JLjava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    .line 26
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 27
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    .line 28
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MRmcpyQK(JLjava/lang/Object;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 33
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 34
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    .line 35
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MrOx2mTw(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILtj0;Z)V
    .locals 7

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    .line 24
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    .line 25
    invoke-static/range {v0 .. v6}, LJ/N;->MWnin4CB(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ltj0;Ljava/util/List;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->d:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->d:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 14
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 17
    :cond_1
    iget-object p3, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->e:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    .line 19
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 21
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MB_K9IBb(JLjava/lang/Object;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public a(Ltj0;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Ltj0;
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltj0;

    .line 6
    move-object v2, v1

    check-cast v2, LIj0;

    .line 7
    invoke-virtual {v2, p1}, LIj0;->c(Ljava/lang/String;)Lvj0;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MKZBEsTm(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeRoute(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltj0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ltj0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public createRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move/from16 v7, p7

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b(Ljava/lang/String;)Ltj0;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider supports createRoute with source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and sink: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, p0

    invoke-virtual {p0, v0, v7}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    move-object v9, p0

    .line 3
    move-object v10, v2

    check-cast v10, LIj0;

    .line 4
    invoke-virtual {v10}, LIj0;->b()LGj0;

    move-result-object v2

    invoke-virtual {v2}, LGj0;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v10}, LIj0;->b()LGj0;

    move-result-object v2

    invoke-virtual {v2}, LGj0;->b()V

    .line 6
    invoke-virtual {v10}, LIj0;->a()V

    .line 7
    :cond_1
    iget-object v2, v10, LIj0;->f:LVj0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    iget-object v4, v10, LIj0;->b:Lrj0;

    iget v2, v2, LVj0;->g:I

    const-string v5, "Request replaced"

    invoke-interface {v4, v5, v2}, Lrj0;->a(Ljava/lang/String;I)V

    .line 9
    iput-object v3, v10, LIj0;->f:LVj0;

    .line 10
    :cond_2
    iget-object v2, v10, LIj0;->a:Lrb;

    .line 11
    invoke-virtual {v2}, Lrb;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqb;

    .line 12
    invoke-static {v4}, Luj0;->a(Lqb;)Luj0;

    move-result-object v4

    .line 13
    iget-object v5, v4, Luj0;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_5

    .line 15
    iget-object v0, v10, LIj0;->b:Lrj0;

    const-string v1, "No sink"

    invoke-interface {v0, v1, v7}, Lrj0;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 16
    :cond_5
    invoke-virtual {v10, p1}, LIj0;->c(Ljava/lang/String;)Lvj0;

    move-result-object v1

    if-nez v1, :cond_6

    .line 17
    iget-object v0, v10, LIj0;->b:Lrj0;

    const-string v1, "Unsupported source URL"

    invoke-interface {v0, v1, v7}, Lrj0;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 18
    :cond_6
    iget-object v0, v10, LIj0;->a:Lrb;

    .line 19
    invoke-virtual {v0}, Lrb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqb;

    .line 20
    iget-object v5, v4, Lqb;->c:Ljava/lang/String;

    .line 21
    iget-object v6, v2, Luj0;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v8, v4

    goto :goto_1

    :cond_8
    move-object v8, v3

    :goto_1
    if-nez v8, :cond_9

    .line 23
    iget-object v0, v10, LIj0;->b:Lrj0;

    const-string v3, "The sink does not exist"

    invoke-interface {v0, v3, v7}, Lrj0;->a(Ljava/lang/String;I)V

    .line 24
    :cond_9
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v0

    invoke-virtual {v0}, LJj;->b()LTj;

    move-result-object v0

    const-class v3, LOj;

    invoke-virtual {v0, v10, v3}, LTj;->a(LUj;Ljava/lang/Class;)V

    .line 25
    new-instance v11, LVj0;

    move-object v0, v11

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, LVj0;-><init>(Lvj0;Luj0;Ljava/lang/String;Ljava/lang/String;IZILqb;)V

    iput-object v11, v10, LIj0;->f:LVj0;

    .line 26
    invoke-virtual {v10}, LIj0;->b()LGj0;

    move-result-object v0

    .line 27
    iget-object v1, v0, LGj0;->d:LIj0;

    .line 28
    iget-object v1, v1, LIj0;->f:LVj0;

    .line 29
    iput-object v1, v0, LGj0;->e:LVj0;

    .line 30
    invoke-static {}, LUj0;->a()LJj;

    move-result-object v1

    iget-object v2, v0, LGj0;->e:LVj0;

    iget-object v2, v2, LVj0;->a:Lvj0;

    .line 31
    invoke-interface {v2}, Lvj0;->a()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, LJj;->a(Ljava/lang/String;)V

    .line 33
    iget-object v0, v0, LGj0;->e:LVj0;

    iget-object v0, v0, LVj0;->h:Lqb;

    invoke-virtual {v0}, Lqb;->e()V

    :goto_2
    return-void
.end method

.method public detachRoute(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltj0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, LIj0;

    .line 3
    invoke-virtual {v0, p1}, LIj0;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, LIj0;->b:Lrj0;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lrj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFlingingControllerBridge(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltj0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ltj0;->a(Ljava/lang/String;)Lej0;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/media/router/FlingingControllerBridge;-><init>(Lej0;)V

    return-object v0
.end method

.method public getSinkName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luj0;

    .line 2
    iget-object p1, p1, Luj0;->b:Ljava/lang/String;

    return-object p1
.end method

.method public getSinkUrn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luj0;

    if-eqz p1, :cond_0

    const-string p2, "urn:x-org.chromium:media:sink:cast-"

    .line 2
    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    iget-object p1, p1, Luj0;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public joinRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b(Ljava/lang/String;)Ltj0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-wide p1, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const-string p3, "Route not found."

    .line 3
    invoke-static {p1, p2, p0, p3, p5}, LJ/N;->MRmcpyQK(JLjava/lang/Object;Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 4
    invoke-interface/range {v0 .. v5}, Ltj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendStringMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltj0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Ltj0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startObservingMediaSinks(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltj0;

    .line 3
    check-cast v1, LIj0;

    .line 4
    invoke-virtual {v1, p1}, LIj0;->c(Ljava/lang/String;)Lvj0;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    sget-object v2, LIj0;->g:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, LIj0;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2}, Lvj0;->a()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v1, LIj0;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcj0;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4, p1}, Lcj0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v2}, Lvj0;->c()Lbb;

    move-result-object v2

    if-nez v2, :cond_3

    .line 10
    sget-object v2, LIj0;->g:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, LIj0;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v5, v1, LIj0;->a:Lrb;

    invoke-virtual {v5}, Lrb;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqb;

    .line 13
    invoke-virtual {v6, v2}, Lqb;->a(Lbb;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    invoke-static {v6}, Luj0;->a(Lqb;)Luj0;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    new-instance v5, Lcj0;

    invoke-direct {v5, p1, v4, v1, v2}, Lcj0;-><init>(Ljava/lang/String;Ljava/util/List;Ldj0;Lbb;)V

    .line 16
    iget-object v4, v1, LIj0;->a:Lrb;

    const/4 v6, 0x4

    invoke-virtual {v4, v2, v5, v6}, Lrb;->a(Lbb;Lcb;I)V

    .line 17
    iget-object v1, v1, LIj0;->c:Ljava/util/Map;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public stopObservingMediaSinks(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltj0;

    .line 2
    check-cast v1, LIj0;

    .line 3
    invoke-virtual {v1, p1}, LIj0;->c(Ljava/lang/String;)Lvj0;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v2}, Lvj0;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v1, LIj0;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcj0;

    if-nez v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v4, v3, Lcj0;->c:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, v3, Lcj0;->c:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, v1, LIj0;->a:Lrb;

    invoke-virtual {v4, v3}, Lrb;->b(Lcb;)V

    .line 9
    iget-object v1, v1, LIj0;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public teardown()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/media/router/ChromeMediaRouter;->a:J

    return-void
.end method
