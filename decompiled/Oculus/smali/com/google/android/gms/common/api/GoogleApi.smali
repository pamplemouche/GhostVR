.class public Lcom/google/android/gms/common/api/GoogleApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzaAJ:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzaAK:Lcom/google/android/gms/internal/zzbat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbat",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzaAL:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzaAM:Lcom/google/android/gms/internal/zzbem;

.field protected final zzaAN:Lcom/google/android/gms/internal/zzbdb;

.field private final zzajb:Landroid/accounts/Account;

.field private final zzayW:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzrM:Landroid/os/Looper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzayW:Lcom/google/android/gms/common/api/Api;

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAJ:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzrM:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbat;->zzb(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/internal/zzbat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    new-instance v0, Lcom/google/android/gms/internal/zzbdj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbdj;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAL:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zzay(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbdb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdb;->zzqm()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    new-instance v0, Lcom/google/android/gms/internal/zzbas;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbas;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAM:Lcom/google/android/gms/internal/zzbem;

    iput-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzajb:Landroid/accounts/Account;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/zzbay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzbay",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbay;->zzpC()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAN:Lcom/google/android/gms/internal/zzbdb;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/internal/zzbay;)V

    return-object p2
.end method


# virtual methods
.method public final getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->mId:I

    return v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzrM:Landroid/os/Looper;

    return-object v0
.end method

.method public zza(Landroid/os/Looper;Lcom/google/android/gms/internal/zzbdd;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzbdd",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzajb:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzpn()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzayW:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzpc()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApi;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAJ:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzbej;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbej;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbej;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzbay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzbay",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zza(ILcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final zzpg()Lcom/google/android/gms/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzayW:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public final zzph()Lcom/google/android/gms/internal/zzbat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbat",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApi;->zzaAK:Lcom/google/android/gms/internal/zzbat;

    return-object v0
.end method
