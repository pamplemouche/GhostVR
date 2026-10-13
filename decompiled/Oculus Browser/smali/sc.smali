.class public Lsc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lvc;


# direct methods
.method public constructor <init>(Lvc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsc;->w:Lvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lsc;->w:Lvc;

    iget-object v0, v0, Lvc;->o0:Ld7;

    invoke-virtual {v0}, Ld7;->clear()V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
