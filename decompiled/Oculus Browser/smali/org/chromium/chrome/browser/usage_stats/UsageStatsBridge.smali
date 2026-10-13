.class public Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LjO0;

.field public b:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;LjO0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, LJ/N;->MZTYueAb(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 4
    iput-object p2, p0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->a:LjO0;

    return-void
.end method

.method public static createEventListAndRunCallback([[BLorg/chromium/base/Callback;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    :try_start_0
    sget-object v4, LrO0;->D:LrO0;

    invoke-static {v4, v3}, LTF;->a(LTF;[B)LTF;

    move-result-object v3

    check-cast v3, LrO0;

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch LdG; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static createMapAndRunCallback([Ljava/lang/String;[Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onAllHistoryDeleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->a:LjO0;

    invoke-virtual {v0}, LjO0;->a()V

    return-void
.end method

.method private onHistoryDeletedForDomains([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->a:LjO0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/16 v2, 0x9

    .line 3
    invoke-static {v2}, LZN0;->a(I)V

    .line 4
    iget-object v2, v0, LjO0;->g:LpN0;

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p1}, LnU;->b(Ljava/lang/Object;)LnU;

    .line 6
    iget-object v2, v0, LjO0;->a:LBN0;

    if-eqz v2, :cond_0

    .line 7
    new-instance p1, LnU;

    invoke-direct {p1}, LnU;-><init>()V

    .line 8
    iget-object v3, v2, LBN0;->b:LnU;

    new-instance v4, LAN0;

    invoke-direct {v4, v2, v1, p1}, LAN0;-><init>(LBN0;Ljava/util/List;LnU;)V

    sget-object v2, LrN0;->a:Lorg/chromium/base/Callback;

    .line 9
    invoke-virtual {v3, v4}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 10
    invoke-virtual {v3, v2}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 11
    new-instance v2, LfO0;

    invoke-direct {v2, v0, v1}, LfO0;-><init>(LjO0;Ljava/util/List;)V

    .line 12
    invoke-virtual {p1, v2}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void

    .line 13
    :cond_0
    throw p1

    .line 14
    :cond_1
    throw p1

    .line 15
    :cond_2
    throw p1
.end method

.method private onHistoryDeletedInRange(JJ)V
    .locals 8

    .line 1
    iget-object v1, p0, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->a:LjO0;

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/16 v2, 0x8

    .line 3
    invoke-static {v2}, LZN0;->a(I)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5
    iget-object v4, v1, LjO0;->g:LpN0;

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v0}, LnU;->b(Ljava/lang/Object;)LnU;

    .line 7
    iget-object v0, v1, LjO0;->a:LBN0;

    invoke-virtual {v0, p1, p2, v2, v3}, LBN0;->a(JJ)LnU;

    move-result-object v6

    new-instance v7, LeO0;

    move-object v0, v7

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, LeO0;-><init>(LjO0;JJ)V

    .line 8
    invoke-virtual {v6, v7}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void

    .line 9
    :cond_0
    throw v0

    .line 10
    :cond_1
    throw v0
.end method
