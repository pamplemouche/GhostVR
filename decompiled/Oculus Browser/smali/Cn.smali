.class public final LCn;
.super LNn;
.source "PG"


# instance fields
.field public final synthetic b:Lun;

.field public final synthetic c:Lcom/google/android/gms/signin/internal/SignInResponse;


# direct methods
.method public constructor <init>(LLn;Lun;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p2, p0, LCn;->b:Lun;

    iput-object p3, p0, LCn;->c:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p1}, LNn;-><init>(LLn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, LCn;->b:Lun;

    iget-object v1, p0, LCn;->c:Lcom/google/android/gms/signin/internal/SignInResponse;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lun;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->x:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->y:Lcom/google/android/gms/common/ConnectionResult;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GoogleApiClientConnecting"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    :cond_1
    iput-boolean v5, v0, Lun;->n:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->r()Llp;

    move-result-object v2

    iput-object v2, v0, Lun;->o:Llp;

    .line 7
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->z:Z

    .line 8
    iput-boolean v2, v0, Lun;->p:Z

    .line 9
    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->A:Z

    .line 10
    iput-boolean v1, v0, Lun;->q:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v1, v0, Lun;->l:Z

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lun;->f()V

    :goto_0
    invoke-virtual {v0}, Lun;->d()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_1
    return-void
.end method
