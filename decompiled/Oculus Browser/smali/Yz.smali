.class public final LYz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrx;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:LIx;


# direct methods
.method public constructor <init>(LIx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LYz;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, LYz;->b:LIx;

    return-void
.end method


# virtual methods
.method public a(LhJ;Ljava/lang/String;)Lrx;
    .locals 2

    .line 1
    iget-object v0, p0, LYz;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXz;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LXz;

    invoke-direct {v0}, LXz;-><init>()V

    .line 3
    :cond_0
    iget-object v1, v0, LXz;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, v0, LXz;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, LYz;->a:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "FeedUploadableActionMutation"

    const-string v0, "Added action %d"

    .line 6
    invoke-static {p1, v0, p2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
