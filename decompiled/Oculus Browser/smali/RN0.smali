.class public final synthetic LRN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LVN0;

.field public final b:Ljava/lang/String;

.field public final c:LnU;


# direct methods
.method public constructor <init>(LVN0;Ljava/lang/String;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRN0;->a:LVN0;

    iput-object p2, p0, LRN0;->b:Ljava/lang/String;

    iput-object p3, p0, LRN0;->c:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, LRN0;->a:LVN0;

    iget-object v1, p0, LRN0;->b:Ljava/lang/String;

    iget-object v2, p0, LRN0;->c:LnU;

    check-cast p1, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {v2, v3}, LnU;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    .line 3
    invoke-static {v4}, LZN0;->a(I)V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v7, v0, LVN0;->b:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    new-instance v10, LUN0;

    invoke-direct {v10, p1, v1, v2}, LUN0;-><init>(Ljava/util/Map;Ljava/lang/String;LnU;)V

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array v8, p1, [Ljava/lang/String;

    .line 8
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array v9, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v8, p1

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v9, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-wide v5, v7, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 13
    invoke-static/range {v5 .. v10}, LJ/N;->Mz1N0m$q(JLjava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 14
    :cond_2
    throw v3

    .line 15
    :cond_3
    throw v3
.end method
