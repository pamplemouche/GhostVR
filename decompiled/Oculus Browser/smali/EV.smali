.class public LEV;
.super LdW;
.source "PG"


# instance fields
.field public final synthetic a:LLV;


# direct methods
.method public constructor <init>(LLV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEV;->a:LLV;

    invoke-direct {p0}, LdW;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    sget-object v0, LLV;->B:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, LEV;->a:LLV;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, LLV;->A:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, LEV;->a:LLV;

    .line 7
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 8
    new-instance v1, LDV;

    invoke-direct {v1, p0}, LDV;-><init>(LEV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c(I)V
    .locals 2

    .line 10
    iget-object v0, p0, LEV;->a:LLV;

    .line 11
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 12
    new-instance v1, LCV;

    invoke-direct {v1, p0, p1}, LCV;-><init>(LEV;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
