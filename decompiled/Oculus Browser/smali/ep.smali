.class public abstract Lep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Lep;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lep;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lep;
    .locals 2

    sget-object v0, Lep;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lep;->b:Lep;

    if-nez v1, :cond_0

    new-instance v1, LHp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, LHp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lep;->b:Lep;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lep;->b:Lep;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a(Ldp;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract b(Ldp;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
