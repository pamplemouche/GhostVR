.class public final Llo;
.super LIn;
.source "PG"


# instance fields
.field public final a:LSm;


# direct methods
.method public constructor <init>(ILSm;)V
    .locals 0

    invoke-direct {p0, p1}, LIn;-><init>(I)V

    iput-object p2, p0, Llo;->a:LSm;

    return-void
.end method


# virtual methods
.method public final a(LVm;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Llo;->a:LSm;

    .line 1
    iget-object p1, p1, LVm;->b:Lwm;

    .line 2
    invoke-virtual {v0, p1}, LSm;->b(Lpm;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Llo;->a(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Llo;->a:LSm;

    invoke-virtual {v0, p1}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, LZi;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Llo;->a:LSm;

    invoke-virtual {p1, v0}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a(Lln;Z)V
    .locals 2

    iget-object v0, p0, Llo;->a:LSm;

    .line 3
    iget-object v1, p1, Lln;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lmn;

    invoke-direct {p2, p1, v0}, Lmn;-><init>(Lln;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LIm;)V

    return-void
.end method
