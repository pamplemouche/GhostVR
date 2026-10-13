.class public final LYa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHw;


# instance fields
.field public final a:LGw;


# direct methods
.method public constructor <init>(LGw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYa0;->a:LGw;

    return-void
.end method


# virtual methods
.method public a()Lsx;
    .locals 3

    .line 10
    iget-object v0, p0, LYa0;->a:LGw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v1, LXa0;

    invoke-direct {v1, v0}, LXa0;-><init>(LGw;)V

    .line 12
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    const-string v2, "FeedContentStorageDirect.getAllKeys"

    .line 13
    invoke-static {v2, v1, v0}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lsx;
    .locals 2

    .line 6
    new-instance v0, LVa0;

    invoke-direct {v0, p0, p1}, LVa0;-><init>(LYa0;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    const-string v1, "FeedContentStorageDirect.getAll"

    .line 8
    invoke-static {v1, v0, p1}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx;

    return-object p1
.end method

.method public a(Ljava/util/List;)Lsx;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, LUa0;

    invoke-direct {v0, p0, p1}, LUa0;-><init>(LYa0;Ljava/util/List;)V

    .line 4
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    const-string v1, "FeedContentStorageDirect.get"

    .line 5
    invoke-static {v1, v0, p1}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx;

    return-object p1
.end method

.method public a(Lzw;)Lxw;
    .locals 2

    .line 9
    new-instance v0, LWa0;

    invoke-direct {v0, p0, p1}, LWa0;-><init>(LYa0;Lzw;)V

    sget-object p1, Lxw;->c:Lxw;

    const-string v1, "FeedContentStorageDirect.commit"

    invoke-static {v1, v0, p1}, Lyb0;->a(Ljava/lang/String;Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxw;

    return-object p1
.end method
