.class public final LDn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;


# instance fields
.field public final synthetic a:Lun;


# direct methods
.method public synthetic constructor <init>(Lun;Lvn;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDn;->a:Lun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, LDn;->a:Lun;

    .line 1
    iget-object p1, p1, Lun;->k:LHu;

    .line 2
    new-instance v0, LBn;

    iget-object v1, p0, LDn;->a:Lun;

    invoke-direct {v0, v1}, LBn;-><init>(Lun;)V

    check-cast p1, LQu;

    invoke-virtual {p1, v0}, LQu;->a(LMu;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, LDn;->a:Lun;

    .line 3
    iget-object v0, v0, Lun;->b:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LDn;->a:Lun;

    .line 5
    iget-boolean v0, v0, Lun;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, LDn;->a:Lun;

    .line 7
    invoke-virtual {p1}, Lun;->f()V

    .line 8
    iget-object p1, p0, LDn;->a:Lun;

    .line 9
    invoke-virtual {p1}, Lun;->d()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, LDn;->a:Lun;

    .line 11
    invoke-virtual {v0, p1}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_1
    iget-object p1, p0, LDn;->a:Lun;

    .line 13
    iget-object p1, p1, Lun;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LDn;->a:Lun;

    .line 15
    iget-object v0, v0, Lun;->b:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
