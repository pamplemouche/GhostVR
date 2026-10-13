.class public LMT0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public final a:LVq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LMT0;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LMT0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LVq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LMT0;->a:LVq;

    return-void
.end method

.method public static a(Ljava/lang/String;)LMT0;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LMT0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LMT0;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMT0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subtype"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-static {v2, v1}, LVq;->a(Landroid/content/Context;Landroid/os/Bundle;)LVq;

    move-result-object v1

    .line 8
    new-instance v2, LMT0;

    invoke-direct {v2, v1}, LMT0;-><init>(LVq;)V

    .line 9
    sget-object v1, LMT0;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 10
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "subtype must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 13
    sget-object v0, LMT0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, LMT0;->b:Ljava/util/Map;

    iget-object v2, p0, LMT0;->a:LVq;

    .line 15
    iget-object v2, v2, LVq;->b:Ljava/lang/String;

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, LMT0;->a:LVq;

    const/4 v2, 0x0

    const-string v3, "*"

    .line 18
    invoke-virtual {v1, v3, v3, v2}, LVq;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    sget-object v2, LVq;->e:Lhr;

    iget-object v1, v1, LVq;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lhr;->d(Ljava/lang/String;)V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
