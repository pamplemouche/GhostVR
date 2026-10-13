.class public final synthetic LGz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LJz;


# direct methods
.method public constructor <init>(LJz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGz;->w:LJz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, LGz;->w:LJz;

    .line 1
    iget-object v1, v0, LJz;->i:Lry;

    const-string v2, "FeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    iget-object v2, v0, LJz;->b:LjA;

    invoke-virtual {v2}, LjA;->m()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 3
    iget-object v0, v0, LJz;->b:LjA;

    .line 4
    iget-object v2, v0, LjA;->g:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 5
    iget-object v2, v0, LjA;->d:LHw;

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v5, LCw;

    invoke-direct {v5}, LCw;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v5, Lzw;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lzw;-><init>(Ljava/util/List;Lyw;)V

    .line 9
    invoke-interface {v2, v5}, LHw;->a(Lzw;)Lxw;

    move-result-object v2

    .line 10
    iget-object v4, v0, LjA;->e:LQw;

    invoke-interface {v4}, LQw;->b()Lxw;

    move-result-object v4

    .line 11
    sget-object v5, Lxw;->b:Lxw;

    const-string v6, "PersistentFeedStore"

    if-eq v2, v5, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "Error clearing all. Could not delete all content from content storage."

    .line 12
    invoke-static {v6, v5, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    sget-object v2, Lxw;->b:Lxw;

    if-eq v4, v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Error clearing all. Could not delete all journals from journal storage."

    .line 14
    invoke-static {v6, v4, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_1
    invoke-virtual {v0}, LjA;->a()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "clearPersistentStore"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "completed"

    aput-object v3, v0, v2

    .line 16
    invoke-virtual {v1, v0}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method
