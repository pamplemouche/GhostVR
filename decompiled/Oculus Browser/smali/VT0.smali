.class public LVT0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYT0;


# instance fields
.field public a:LYT0;

.field public b:LXT0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, LXT0;

    invoke-direct {v0}, LXT0;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LVT0;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LVT0;->b:LXT0;

    return-void
.end method


# virtual methods
.method public final a()LYT0;
    .locals 1

    .line 3
    iget-object v0, p0, LVT0;->a:LYT0;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, LVT0;->b:LXT0;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, LWT0;

    invoke-direct {v0}, LWT0;-><init>()V

    .line 6
    iput-object v0, p0, LVT0;->a:LYT0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, LVT0;->a:LYT0;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LVT0;->a()LYT0;

    move-result-object v0

    invoke-interface {v0, p1}, LYT0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;LZT0;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, LVT0;->a()LYT0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LYT0;->a(Ljava/lang/String;LZT0;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, LqU;->a()LqU;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v0, p0, LVT0;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-virtual {p1}, LqU;->close()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 5
    :try_start_4
    invoke-virtual {p1}, LqU;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 6
    :try_start_5
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, v0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
