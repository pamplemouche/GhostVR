.class public final Lys;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lss;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lss;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lys;->w:Lss;

    iput-object p2, p0, Lys;->x:Ljava/lang/String;

    iput-object p3, p0, Lys;->y:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lys;->w:Lss;

    .line 2
    iget-object v0, v0, Lss;->G:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lys;->w:Lss;

    .line 5
    iget-object v1, v1, Lss;->G:Ljava/util/Map;

    .line 6
    iget-object v2, p0, Lys;->x:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBj;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lys;->w:Lss;

    .line 9
    iget-object v0, v0, Lss;->E:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    iget-object v2, p0, Lys;->x:Ljava/lang/String;

    iget-object v3, p0, Lys;->y:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, LBj;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    sget-object v0, Lss;->a0:LJs;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lys;->x:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 13
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Discarded message for unknown namespace \'%s\'"

    .line 14
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
