.class public Llt0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final synthetic b:Lmt0;


# direct methods
.method public synthetic constructor <init>(Lmt0;Ljt0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llt0;->b:Lmt0;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llt0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lgt0;Ljava/util/HashSet;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v4, v2, Lgt0;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    iget-object v4, v1, Llt0;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v7, v1, Llt0;->b:Lmt0;

    iget-object v8, v2, Lgt0;->d:Ljava/lang/String;

    iget-object v9, v2, Lgt0;->e:Ljava/lang/String;

    iget-boolean v10, v2, Lgt0;->c:Z

    iget-wide v11, v2, Lgt0;->b:J

    iget-object v13, v2, Lgt0;->f:[B

    iget-object v14, v2, Lgt0;->g:[B

    if-eqz v7, :cond_1

    .line 6
    new-instance v0, Ljt0;

    invoke-direct {v0, v7, v8}, Ljt0;-><init>(Lmt0;Ljava/lang/String;)V

    .line 7
    iget-wide v5, v7, Lmt0;->b:J

    iget-object v15, v7, Lmt0;->a:Lht0;

    .line 8
    invoke-virtual {v15, v8}, Lht0;->a(Ljava/lang/String;)Z

    move-result v15

    iget-object v1, v7, Lmt0;->c:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    .line 9
    invoke-static {v1, v3}, LGO0;->a(Landroid/content/Context;F)I

    move-result v16

    move-object/from16 v17, v0

    .line 10
    invoke-static/range {v5 .. v17}, LJ/N;->M1QiERX9(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZJ[B[BZILjava/lang/Object;)J

    move-result-wide v0

    .line 11
    iput-wide v0, v2, Lgt0;->h:J

    .line 12
    monitor-exit v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    throw v0

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error inserting bookmark "

    .line 15
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lgt0;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "PartnerBMReader"

    invoke-static {v0, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    iget-wide v0, v2, Lgt0;->h:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    const-string v0, "Error creating bookmark \'"

    .line 17
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lgt0;->e:Ljava/lang/String;

    const-string v2, "\'."

    invoke-static {v0, v1, v2}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PartnerBMReader"

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_2
    iget-boolean v0, v2, Lgt0;->c:Z

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, v2, Lgt0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgt0;

    .line 20
    iget-object v3, v1, Lgt0;->i:Lgt0;

    if-eq v3, v2, :cond_3

    const-string v1, "Hierarchy error in bookmark \'"

    .line 21
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lgt0;->e:Ljava/lang/String;

    const-string v4, "\'. Skipping."

    invoke-static {v1, v3, v4}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "PartnerBMReader"

    invoke-static {v4, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-wide v3, v2, Lgt0;->h:J

    iput-wide v3, v1, Lgt0;->b:J

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 23
    invoke-virtual {v3, v1, v4}, Llt0;->a(Lgt0;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_4
    move-object/from16 v3, p0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Llt0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Llt0;->b:Lmt0;

    invoke-virtual {v1}, Lmt0;->a()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Llt0;->b:Lmt0;

    .line 2
    iget-object v1, v0, Lmt0;->a:Lht0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lht0;

    invoke-direct {v1}, Lht0;-><init>()V

    .line 4
    iput-object v1, v0, Lmt0;->a:Lht0;

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 6
    invoke-static {}, Lit0;->a()Lit0;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v4, Lgt0;

    invoke-direct {v4}, Lgt0;-><init>()V

    const-wide/16 v5, 0x0

    .line 10
    iput-wide v5, v4, Lgt0;->a:J

    const-string v7, "[IMPLIED_ROOT]"

    .line 11
    iput-object v7, v4, Lgt0;->e:Ljava/lang/String;

    const-wide/16 v7, -0x1

    .line 12
    iput-wide v7, v4, Lgt0;->h:J

    .line 13
    iput-wide v5, v4, Lgt0;->b:J

    const/4 v7, 0x1

    .line 14
    iput-boolean v7, v4, Lgt0;->c:Z

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const-string v10, "PartnerBMReader"

    if-eqz v8, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgt0;

    if-nez v8, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-wide v11, v8, Lgt0;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Duplicate bookmark id: "

    .line 19
    invoke-static {v11}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v8, Lgt0;->a:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ". Dropping bookmark."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v9}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_3
    iget-boolean v11, v8, Lgt0;->c:Z

    if-nez v11, :cond_4

    iget-object v11, v8, Lgt0;->d:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "More than one bookmark pointing to "

    .line 21
    invoke-static {v11}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v8, v8, Lgt0;->d:Ljava/lang/String;

    const-string v12, ". Keeping only the first one for consistency with Chromium."

    invoke-static {v11, v8, v12}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v9}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_4
    iget-wide v9, v8, Lgt0;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v8, v8, Lgt0;->d:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_5
    iget-object v0, v0, Lit0;->w:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    .line 25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 26
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 27
    iget-object v3, p0, Llt0;->b:Lmt0;

    if-eqz v3, :cond_c

    const-string v3, "PartnerBookmark.Count2"

    .line 28
    invoke-static {v3, v0}, LfV;->b(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgt0;

    .line 30
    iget-wide v11, v3, Lgt0;->a:J

    cmp-long v8, v11, v5

    if-nez v8, :cond_6

    goto :goto_1

    .line 31
    :cond_6
    iget-wide v11, v3, Lgt0;->b:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-wide v11, v3, Lgt0;->b:J

    iget-wide v13, v3, Lgt0;->a:J

    cmp-long v8, v11, v13

    if-nez v8, :cond_7

    goto :goto_2

    .line 32
    :cond_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgt0;

    iput-object v8, v3, Lgt0;->i:Lgt0;

    .line 33
    iget-object v8, v8, Lgt0;->j:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_8
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgt0;

    iput-object v8, v3, Lgt0;->i:Lgt0;

    .line 35
    iget-object v8, v8, Lgt0;->j:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_9
    iget-object v0, v4, Lgt0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v9, [Ljava/lang/Object;

    const-string v2, "ATTENTION: not using partner bookmarks as none were provided"

    .line 37
    invoke-static {v10, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 38
    :cond_a
    iget-object v0, v4, Lgt0;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v7, :cond_b

    new-array v0, v9, [Ljava/lang/Object;

    const-string v2, "ATTENTION: more than one top-level partner bookmarks, ignored"

    .line 39
    invoke-static {v10, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 40
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v4, v0}, Llt0;->a(Lgt0;Ljava/util/HashSet;)V

    :goto_3
    return-object v1

    .line 41
    :cond_c
    throw v1

    .line 42
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 43
    :cond_e
    throw v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Llt0;->c()V

    return-void
.end method
