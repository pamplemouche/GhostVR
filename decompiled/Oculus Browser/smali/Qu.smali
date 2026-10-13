.class public LQu;
.super Lap;
.source "PG"

# interfaces
.implements LHu;


# instance fields
.field public final D:Z

.field public final E:LVo;

.field public final F:Landroid/os/Bundle;

.field public G:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLVo;Landroid/os/Bundle;LFm;LGm;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lap;-><init>(Landroid/content/Context;Landroid/os/Looper;ILVo;LFm;LGm;)V

    iput-boolean p3, p0, LQu;->D:Z

    iput-object p4, p0, LQu;->E:LVo;

    iput-object p5, p0, LQu;->F:Landroid/os/Bundle;

    .line 1
    iget-object p1, p4, LVo;->h:Ljava/lang/Integer;

    .line 2
    iput-object p1, p0, LQu;->G:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, LOu;->a(Landroid/os/IBinder;)LPu;

    move-result-object p1

    return-object p1
.end method

.method public a(LMu;)V
    .locals 4

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, LQu;->E:LVo;

    .line 2
    iget-object v0, v0, LVo;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<<default account>>"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 3
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Lkj;->a(Landroid/content/Context;)Lkj;

    move-result-object v1

    invoke-virtual {v1}, Lkj;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, LQu;->G:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LPu;

    new-instance v2, Lcom/google/android/gms/signin/internal/SignInRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    check-cast v0, LNu;

    .line 6
    invoke-virtual {v0}, LRt;->A()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v2}, LTt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v1, p1}, LTt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, LRt;->b(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Remote service probably died when signIn is called"

    const-string v2, "SignInClientImpl"

    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v1, Lcom/google/android/gms/signin/internal/SignInResponse;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>(I)V

    invoke-interface {p1, v1}, LMu;->a(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public f()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, LQu;->E:LVo;

    .line 1
    iget-object v0, v0, LVo;->e:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->g:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LQu;->F:Landroid/os/Bundle;

    iget-object v1, p0, LQu;->E:LVo;

    .line 4
    iget-object v1, v1, LVo;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LQu;->F:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public requiresSignIn()Z
    .locals 1

    iget-boolean v0, p0, LQu;->D:Z

    return v0
.end method
