.class public final synthetic LLN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LON0;

.field public final b:Z

.field public final c:Ljava/util/List;

.field public final d:LnU;


# direct methods
.method public constructor <init>(LON0;ZLjava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLN0;->a:LON0;

    iput-boolean p2, p0, LLN0;->b:Z

    iput-object p3, p0, LLN0;->c:Ljava/util/List;

    iput-object p4, p0, LLN0;->d:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v1, p0, LLN0;->a:LON0;

    iget-boolean v2, p0, LLN0;->b:Z

    iget-object v4, p0, LLN0;->c:Ljava/util/List;

    iget-object v5, p0, LLN0;->d:LnU;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, LZN0;->a(I)V

    .line 3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4
    invoke-static {v0}, LZN0;->a(I)V

    .line 5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6
    :goto_0
    iget-object v6, v1, LON0;->a:Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v7, LNN0;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, LNN0;-><init>(LON0;ZLjava/util/List;Ljava/util/List;LnU;)V

    .line 8
    iget-wide v0, v6, Lorg/chromium/chrome/browser/usage_stats/UsageStatsBridge;->b:J

    .line 9
    invoke-static {v0, v1, v6, p1, v7}, LJ/N;->M2UQ4Zbr(JLjava/lang/Object;[Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
