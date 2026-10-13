.class public LhD;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public final a:LgD;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LhD;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, LhD;->a(Landroid/content/Context;)LgD;

    move-result-object p1

    iput-object p1, p0, LhD;->a:LgD;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public static a(Landroid/content/Context;)LgD;
    .locals 3

    .line 1
    sget-object v0, LhD;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, LhD;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LgD;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, LgD;

    invoke-direct {v2, p0}, LgD;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object p0, LhD;->b:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
