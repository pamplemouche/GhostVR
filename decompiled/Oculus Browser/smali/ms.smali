.class public abstract Lms;
.super LSm;
.source "PG"


# direct methods
.method public constructor <init>(LHm;)V
    .locals 1

    .line 1
    sget-object v0, LDj;->b:Lym;

    invoke-direct {p0, v0, p1}, LSm;-><init>(Lym;LHm;)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/Status;)LLm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    return-void
.end method
