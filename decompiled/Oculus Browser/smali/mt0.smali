.class public Lmt0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static i:Ljava/util/Set;

.field public static j:Z

.field public static k:Z


# instance fields
.field public a:Lht0;

.field public b:J

.field public c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmt0;->i:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmt0;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lmt0;->c:Landroid/content/Context;

    .line 4
    invoke-static {p0}, LJ/N;->MQQiT1PE(Ljava/lang/Object;)J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lmt0;->b:J

    const/4 p1, 0x1

    .line 6
    sput-boolean p1, Lmt0;->j:Z

    .line 7
    sget-boolean v0, Lmt0;->k:Z

    if-eqz v0, :cond_0

    .line 8
    sput-boolean p1, Lmt0;->k:Z

    .line 9
    invoke-static {}, LJ/N;->McEggOd3()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lmt0;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MZy4XMIu(JLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmt0;->h:Z

    .line 4
    iget-object v0, p0, Lmt0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p0, Lmt0;->e:I

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lmt0;->b()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmt0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lmt0;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lmt0;->a:Lht0;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lmt0;->a:Lht0;

    invoke-virtual {v1}, Lht0;->a()V

    .line 5
    :cond_1
    iget-boolean v1, p0, Lmt0;->g:Z

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lmt0;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkt0;

    .line 7
    invoke-interface {v2}, Lkt0;->a()V

    goto :goto_0

    .line 8
    :cond_2
    iget-wide v1, p0, Lmt0;->b:J

    .line 9
    invoke-static {v1, v2, p0}, LJ/N;->Mp38r97L(JLjava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lmt0;->b:J

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lmt0;->f:Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
