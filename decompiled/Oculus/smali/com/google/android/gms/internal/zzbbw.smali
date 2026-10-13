.class public Lcom/google/android/gms/internal/zzbbw;
.super Lcom/google/android/gms/internal/zzbba;


# instance fields
.field private zzaAN:Lcom/google/android/gms/internal/zzbdb;

.field private final zzaCW:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private final zzpS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbbw;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onResume()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbw;->zzpS()V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onStart()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbw;->zzpS()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbdb;->zzb(Lcom/google/android/gms/internal/zzbbw;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method final zzpR()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzbat",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaCW:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method

.method protected final zzps()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbw;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdb;->zzps()V

    return-void
.end method
