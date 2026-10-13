.class public LUT0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:Ljava/util/Set;

.field public static g:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:LYT0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LUT0;->f:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, LUT0;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LUT0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LUT0;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, LUT0;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 28
    sget-object v0, LUT0;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "test_dummy"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "dev_ui"

    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 31
    :cond_3
    invoke-static {p0, v1, v0}, LJ/N;->M_3lILbP(Ljava/lang/String;ZZ)V

    .line 32
    :cond_4
    sget-object v0, LUT0;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LaU0;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, LaU0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, LaU0;->close()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;LqU;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, LqU;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, LqU;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 12
    new-instance v0, LaU0;

    invoke-direct {v0}, LaU0;-><init>()V

    .line 13
    :try_start_0
    iget-object v1, p0, LUT0;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LUT0;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    invoke-static {v2, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-static {}, LqU;->a()LqU;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    :try_start_2
    iget-object v3, p0, LUT0;->b:Ljava/lang/Class;

    iget-object v4, p0, LUT0;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, LUT0;->d:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-static {v2, v1}, LUT0;->a(Ljava/lang/Throwable;LqU;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 18
    :try_start_4
    sget-object v1, LUT0;->g:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, LUT0;->a:Ljava/lang/String;

    invoke-static {v1}, LUT0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, LUT0;->g:Ljava/util/Set;

    iget-object v3, p0, LUT0;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_0
    iget-object v1, p0, LUT0;->d:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 22
    invoke-static {v2, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    return-object v1

    :catchall_0
    move-exception v2

    .line 23
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    .line 24
    :try_start_6
    invoke-static {v2, v1}, LUT0;->a(Ljava/lang/Throwable;LqU;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 25
    :goto_1
    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    .line 26
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    .line 27
    invoke-static {v1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    throw v2
.end method

.method public a(LZT0;)V
    .locals 3

    .line 7
    new-instance v0, LaU0;

    invoke-direct {v0}, LaU0;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, LUT0;->b()LYT0;

    move-result-object v1

    iget-object v2, p0, LUT0;->a:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, LYT0;->a(Ljava/lang/String;LZT0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 9
    invoke-static {p1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 11
    invoke-static {p1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    throw v1
.end method

.method public b()LYT0;
    .locals 4

    .line 1
    iget-object v0, p0, LUT0;->e:LYT0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LaU0;

    invoke-direct {v0}, LaU0;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, LVT0;

    iget-object v3, p0, LUT0;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, LVT0;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, LUT0;->e:LYT0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 6
    invoke-static {v1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    throw v2

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, LUT0;->e:LYT0;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    new-instance v0, LaU0;

    invoke-direct {v0}, LaU0;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, LUT0;->b()LYT0;

    move-result-object v1

    iget-object v2, p0, LUT0;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, LYT0;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    return v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 5
    invoke-static {v1, v0}, LUT0;->a(Ljava/lang/Throwable;LaU0;)V

    throw v2
.end method
