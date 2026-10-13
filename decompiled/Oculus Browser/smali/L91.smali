.class public abstract LL91;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lorg/chromium/policy/CombinedPolicyProvider;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LL91;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LL91;->a:Lorg/chromium/policy/CombinedPolicyProvider;

    iget v1, p0, LL91;->b:I

    .line 3
    iget-object v2, v0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, v0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-wide v1, v0, Lorg/chromium/policy/CombinedPolicyProvider;->a:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object p1, v0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 7
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, v0, Lorg/chromium/policy/CombinedPolicyProvider;->b:Lorg/chromium/policy/PolicyConverter;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_a

    .line 9
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    .line 10
    iget-wide v6, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    check-cast v5, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 12
    invoke-static {v6, v7, v4, v3, v5}, LJ/N;->MpCbKnQi(JLjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 13
    :cond_5
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 14
    iget-wide v6, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-static {v6, v7, v4, v3, v5}, LJ/N;->MeuOZAup(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_6
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 17
    iget-wide v6, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    check-cast v5, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 19
    invoke-static {v6, v7, v4, v3, v5}, LJ/N;->MTuFp9B7(JLjava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 20
    :cond_7
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 21
    iget-wide v6, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    check-cast v5, [Ljava/lang/String;

    .line 22
    invoke-static {v6, v7, v4, v3, v5}, LJ/N;->MGY2QXB9(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_8
    instance-of v6, v5, Landroid/os/Bundle;

    const/4 v7, 0x0

    const-string v8, " for key "

    const-string v9, "PolicyConverter"

    if-eqz v6, :cond_9

    .line 24
    check-cast v5, Landroid/os/Bundle;

    .line 25
    :try_start_0
    iget-wide v10, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    .line 26
    invoke-virtual {v4, v5}, Lorg/chromium/policy/PolicyConverter;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v10, v11, v4, v3, v6}, LJ/N;->MeuOZAup(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "Invalid bundle in app restrictions "

    .line 28
    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9, v3, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 29
    :cond_9
    instance-of v6, v5, [Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 30
    check-cast v5, [Landroid/os/Bundle;

    .line 31
    :try_start_1
    iget-wide v10, v4, Lorg/chromium/policy/PolicyConverter;->a:J

    .line 32
    invoke-virtual {v4, v5}, Lorg/chromium/policy/PolicyConverter;->a([Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v10, v11, v4, v3, v6}, LJ/N;->MeuOZAup(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    const-string v4, "Invalid bundle array in app restrictions "

    .line 34
    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 35
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 36
    invoke-static {v9, v3, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x0

    .line 37
    throw p1

    .line 38
    :cond_b
    iget-wide v0, v0, Lorg/chromium/policy/CombinedPolicyProvider;->a:J

    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object p1

    .line 39
    invoke-static {v0, v1, p1}, LJ/N;->M4QXUjg3(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method
