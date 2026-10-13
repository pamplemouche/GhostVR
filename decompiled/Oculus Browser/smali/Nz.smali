.class public final synthetic LNz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LSz;


# direct methods
.method public constructor <init>(LSz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNz;->a:LSz;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LNz;->a:LSz;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v1, v0, LSz;->a:Lry;

    const-string v2, "EphemeralFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWw;

    .line 3
    iget-object v4, v3, LWw;->a:Ljava/lang/String;

    .line 4
    iget-object v5, v3, LWw;->b:LNI;

    invoke-virtual {v5}, LNI;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v3, v3, LWw;->b:LNI;

    invoke-virtual {v3}, LNI;->k()LXI;

    move-result-object v3

    .line 6
    iget-object v5, v0, LSz;->c:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, v0, LSz;->b:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "task"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "commitContentMutation"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "mutations"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lny;->a([Ljava/lang/Object;)V

    .line 9
    sget-object p1, Lxw;->b:Lxw;

    return-object p1
.end method
