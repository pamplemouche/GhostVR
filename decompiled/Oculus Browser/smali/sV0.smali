.class public LsV0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Ljava/lang/Object;

.field public static e:LsV0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:LrV0;

.field public c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LsV0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LsV0;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, LtV0;

    invoke-direct {v0}, LtV0;-><init>()V

    iput-object v0, p0, LsV0;->b:LrV0;

    return-void
.end method

.method public static b()LsV0;
    .locals 2

    .line 1
    sget-object v0, LsV0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LsV0;->e:LsV0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LsV0;

    invoke-direct {v1}, LsV0;-><init>()V

    sput-object v1, LsV0;->e:LsV0;

    .line 4
    :cond_0
    sget-object v1, LsV0;->e:LsV0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 1
    iget-object v0, p0, LsV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LsV0;->c:[B

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, LsV0;->b:LrV0;

    invoke-interface {v1}, LrV0;->a()[B

    move-result-object v1

    iput-object v1, p0, LsV0;->c:[B

    .line 4
    :cond_0
    iget-object v1, p0, LsV0;->c:[B

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
