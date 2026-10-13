.class public final Lfo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lcom/google/android/gms/signin/internal/SignInResponse;

.field public final synthetic x:Lco;


# direct methods
.method public constructor <init>(Lco;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    iput-object p1, p0, Lfo;->x:Lco;

    iput-object p2, p0, Lfo;->w:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lfo;->x:Lco;

    iget-object v1, p0, Lfo;->w:Lcom/google/android/gms/signin/internal/SignInResponse;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->x:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 4
    iget-object v3, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->y:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lco;->g:Lgo;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->r()Llp;

    move-result-object v1

    iget-object v4, v0, Lco;->d:Ljava/util/Set;

    check-cast v3, LXm;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput-object v1, v3, LXm;->c:Llp;

    iput-object v4, v3, LXm;->d:Ljava/util/Set;

    .line 7
    iget-boolean v2, v3, LXm;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, v3, LXm;->a:Lwm;

    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Llp;Ljava/util/Set;)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v3, v1}, LXm;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2

    :cond_3
    throw v2

    .line 9
    :cond_4
    :goto_1
    iget-object v1, v0, Lco;->g:Lgo;

    check-cast v1, LXm;

    invoke-virtual {v1, v3}, LXm;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_5
    :goto_2
    iget-object v0, v0, Lco;->f:LHu;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    .line 10
    :cond_6
    throw v2
.end method
