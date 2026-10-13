.class public LJj0;
.super LIj0;
.source "PG"


# instance fields
.field public h:Lbj0;

.field public final i:Ljava/util/Map;

.field public j:LNj0;

.field public final k:LTj0;


# direct methods
.method public constructor <init>(Lrb;Lrj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LIj0;-><init>(Lrb;Lrj0;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LJj0;->i:Ljava/util/Map;

    .line 3
    new-instance p1, LTj0;

    invoke-direct {p1, p0}, LTj0;-><init>(LIj0;)V

    iput-object p1, p0, LJj0;->k:LTj0;

    .line 4
    new-instance p1, LNj0;

    iget-object p2, p0, LJj0;->k:LTj0;

    invoke-direct {p1, p0, p2}, LNj0;-><init>(LJj0;LTj0;)V

    iput-object p1, p0, LJj0;->j:LNj0;

    return-void
.end method


# virtual methods
.method public a(LOj;Ljava/lang/String;)V
    .locals 4

    .line 53
    invoke-super {p0, p1, p2}, LIj0;->a(LOj;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbj0;

    .line 55
    iget-object v0, p0, LJj0;->j:LNj0;

    iget-object v1, p2, Lbj0;->a:Ljava/lang/String;

    .line 56
    iget-object v1, p0, LJj0;->k:LTj0;

    .line 57
    invoke-virtual {v1}, LGj0;->f()Luj0;

    move-result-object v1

    iget-object p2, p2, Lbj0;->b:Ljava/lang/String;

    const-string v2, "cast"

    .line 58
    invoke-virtual {v0, v1, p2, v2}, LNj0;->a(Luj0;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, LJj0;->j:LNj0;

    .line 60
    iget-object p2, p1, LNj0;->e:LJj0;

    .line 61
    iget-object p2, p2, LJj0;->i:Ljava/util/Map;

    .line 62
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj0;

    .line 63
    iget-boolean v1, v0, Lbj0;->f:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, v0, Lbj0;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, LNj0;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "new_session"

    .line 66
    invoke-virtual {p1, v0, v3, v1, v2}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 67
    :cond_2
    iget-object p1, p0, LJj0;->k:LTj0;

    .line 68
    iget-object p1, p1, LGj0;->b:LOj;

    .line 69
    invoke-virtual {p1}, LOj;->e()Lok;

    move-result-object p1

    invoke-virtual {p1}, Lok;->p()LJm;

    return-void
.end method

.method public a(Lfj0;Ljava/lang/String;IIZ)V
    .locals 9

    .line 70
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    iget-object v1, p1, Lfj0;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, LIj0;->b:Lrj0;

    iget-object v3, p1, Lfj0;->a:Ljava/lang/String;

    iget-object v4, p1, Lfj0;->b:Ljava/lang/String;

    move v5, p4

    move-object v6, p0

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lrj0;->a(Ljava/lang/String;Ljava/lang/String;ILtj0;Z)V

    .line 72
    iget-object p4, p1, Lfj0;->c:Ljava/lang/String;

    invoke-static {p4}, LPj0;->a(Ljava/lang/String;)LPj0;

    move-result-object p4

    .line 73
    iget-object p5, p4, LPj0;->c:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 74
    iget-object v0, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v7, p0, LJj0;->i:Ljava/util/Map;

    new-instance v8, Lbj0;

    iget-object v1, p1, Lfj0;->a:Ljava/lang/String;

    .line 76
    iget-object v3, p4, LPj0;->b:Ljava/lang/String;

    .line 77
    iget-object v4, p4, LPj0;->d:Ljava/lang/String;

    move-object v0, v8

    move-object v2, p5

    move-object v5, p2

    move v6, p3

    .line 78
    invoke-direct/range {v0 .. v6}, Lbj0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-interface {v7, p5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 38
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, LJj0;->j:LNj0;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x0

    .line 40
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 41
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, -0x1

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x53ff0270

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v5, :cond_3

    const v5, -0x3607e78a

    if-eq v4, v5, :cond_2

    const v5, 0x2ebed10e

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "leave_session"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "client_connect"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "client_disconnect"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_0
    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_6

    if-eq v3, v7, :cond_5

    .line 43
    invoke-virtual {p1, v2}, LNj0;->c(Lorg/json/JSONObject;)Z

    goto :goto_1

    .line 44
    :cond_5
    invoke-virtual {p1, v2}, LNj0;->b(Lorg/json/JSONObject;)Z

    goto :goto_1

    :cond_6
    const-string p2, "clientId"

    .line 45
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_1

    .line 46
    :cond_7
    iget-object v2, p1, LNj0;->e:LJj0;

    .line 47
    iget-object v2, v2, LJj0;->i:Ljava/util/Map;

    .line 48
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbj0;

    if-nez p2, :cond_8

    goto :goto_1

    .line 49
    :cond_8
    iget-object p1, p1, LNj0;->e:LJj0;

    iget-object p2, p2, Lbj0;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, LIj0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_9
    invoke-virtual {p1, v2}, LNj0;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSONException while handling internal message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "CafMR"

    invoke-static {v0, p1, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 52
    :cond_a
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 1
    invoke-static {p1}, LPj0;->a(Ljava/lang/String;)LPj0;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    iget-object v1, v0, LPj0;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v1, p0, LJj0;->k:LTj0;

    .line 4
    invoke-virtual {v1}, LGj0;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p1, p0, LIj0;->b:Lrj0;

    const-string p2, "No presentation"

    invoke-interface {p1, p2, p5}, Lrj0;->a(Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v1, "auto-join"

    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 7
    iget-object v1, v0, LPj0;->d:Ljava/lang/String;

    const-string v3, "page_scoped"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v1, p0, LJj0;->k:LTj0;

    .line 10
    iget-object v1, v1, LGj0;->e:LVj0;

    if-eqz v1, :cond_3

    iget-object v1, v1, LVj0;->a:Lvj0;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_0
    check-cast v1, LPj0;

    .line 12
    iget-object v1, v1, LPj0;->b:Ljava/lang/String;

    iget-object v3, v0, LPj0;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 14
    :cond_4
    iget-object v1, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LJj0;->h:Lbj0;

    if-eqz v1, :cond_5

    .line 15
    iget-object v0, v1, Lbj0;->d:Ljava/lang/String;

    invoke-static {p3, v0}, LUj0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LJj0;->h:Lbj0;

    iget v0, v0, Lbj0;->e:I

    if-ne p4, v0, :cond_b

    goto/16 :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_2

    .line 17
    :cond_6
    iget-object v1, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbj0;

    .line 18
    iget-object v3, v0, LPj0;->d:Ljava/lang/String;

    const-string v4, "origin_scoped"

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    iget-object v0, v1, Lbj0;->d:Ljava/lang/String;

    invoke-static {p3, v0}, LUj0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 21
    :cond_7
    iget-object v0, v0, LPj0;->d:Ljava/lang/String;

    const-string v3, "tab_and_origin_scoped"

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    iget-object v0, v1, Lbj0;->d:Ljava/lang/String;

    invoke-static {p3, v0}, LUj0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v1, Lbj0;->e:I

    if-ne p4, v0, :cond_b

    goto :goto_1

    :cond_8
    const-string v0, "cast-session_"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 26
    iget-object v1, p0, LJj0;->k:LTj0;

    .line 27
    invoke-virtual {v1}, LGj0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 28
    :cond_9
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfj0;

    .line 29
    iget-object v1, v1, Lfj0;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    const/4 v2, 0x1

    :cond_b
    :goto_2
    if-nez v2, :cond_c

    .line 30
    iget-object p1, p0, LIj0;->b:Lrj0;

    const-string p2, "No matching route"

    invoke-interface {p1, p2, p5}, Lrj0;->a(Ljava/lang/String;I)V

    return-void

    .line 31
    :cond_c
    new-instance v1, Lfj0;

    .line 32
    iget-object v0, p0, LJj0;->k:LTj0;

    .line 33
    invoke-virtual {v0}, LGj0;->f()Luj0;

    move-result-object v0

    .line 34
    iget-object v0, v0, Luj0;->a:Ljava/lang/String;

    .line 35
    invoke-direct {v1, v0, p1, p2}, Lfj0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 36
    invoke-virtual/range {v0 .. v5}, LJj0;->a(Lfj0;Ljava/lang/String;IIZ)V

    return-void

    .line 37
    :cond_d
    :goto_3
    iget-object p1, p0, LIj0;->b:Lrj0;

    const-string p2, "Unsupported presentation URL"

    invoke-interface {p1, p2, p5}, Lrj0;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b()LGj0;
    .locals 1

    .line 7
    iget-object v0, p0, LJj0;->k:LTj0;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-super {p0, p1}, LIj0;->b(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, LJj0;->e(Ljava/lang/String;)Lbj0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, LJj0;->k:LTj0;

    .line 5
    invoke-virtual {v0}, LGj0;->f()Luj0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, LJj0;->j:LNj0;

    iget-object p1, p1, Lbj0;->b:Ljava/lang/String;

    const-string v2, "stop"

    invoke-virtual {v1, v0, p1, v2}, LNj0;->a(Luj0;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Lvj0;
    .locals 0

    .line 1
    invoke-static {p1}, LPj0;->a(Ljava/lang/String;)LPj0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbj0;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p1, Lbj0;->f:Z

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p1, Lbj0;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, LIj0;->b:Lrj0;

    iget-object p1, p1, Lbj0;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lrj0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LJj0;->e(Ljava/lang/String;)Lbj0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, LJj0;->i:Ljava/util/Map;

    iget-object v0, v0, Lbj0;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj0;

    iput-object v0, p0, LJj0;->h:Lbj0;

    .line 3
    :cond_0
    iget-object v0, p0, LIj0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;)Lbj0;
    .locals 3

    .line 1
    iget-object v0, p0, LJj0;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbj0;

    .line 2
    iget-object v2, v1, Lbj0;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
