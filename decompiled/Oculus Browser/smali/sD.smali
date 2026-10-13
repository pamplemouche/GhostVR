.class public LsD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:LZB;

.field public static final d:Ljava/lang/Object;

.field public static e:LsD;


# instance fields
.field public a:LAq;

.field public b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AndroidGcmController"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LsD;->c:LZB;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LsD;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LAq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LsD;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LsD;->a:LAq;

    return-void
.end method

.method public static a(Landroid/content/Context;)LsD;
    .locals 3

    .line 1
    sget-object v0, LsD;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LsD;->e:LsD;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LsD;

    .line 4
    invoke-static {p0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LsD;-><init>(Landroid/content/Context;LAq;)V

    sput-object v1, LsD;->e:LsD;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p0, LsD;->e:LsD;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
