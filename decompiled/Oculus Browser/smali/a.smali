.class public La;
.super Lc;
.source "PG"


# static fields
.field public static volatile c:La;


# instance fields
.field public a:Lc;

.field public b:Lc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc;-><init>()V

    .line 2
    new-instance v0, Lb;

    invoke-direct {v0}, Lb;-><init>()V

    iput-object v0, p0, La;->b:Lc;

    .line 3
    iput-object v0, p0, La;->a:Lc;

    return-void
.end method

.method public static b()La;
    .locals 2

    .line 1
    sget-object v0, La;->c:La;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, La;->c:La;

    return-object v0

    .line 3
    :cond_0
    const-class v0, La;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La;->c:La;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, La;

    invoke-direct {v1}, La;-><init>()V

    sput-object v1, La;->c:La;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, La;->c:La;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, La;->a:Lc;

    invoke-virtual {v0}, Lc;->a()Z

    move-result v0

    return v0
.end method
