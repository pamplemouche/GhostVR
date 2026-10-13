.class public final LTu;
.super Lom;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lom;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;
    .locals 8

    check-cast p4, LIu;

    if-nez p4, :cond_0

    sget-object p4, LIu;->i:LIu;

    :cond_0
    new-instance p4, LQu;

    const/4 v3, 0x1

    .line 1
    iget-object v0, p3, LVo;->g:LIu;

    .line 2
    iget-object v1, p3, LVo;->h:Ljava/lang/Integer;

    .line 3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p3, LVo;->a:Landroid/accounts/Account;

    const-string v4, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz v0, :cond_3

    .line 6
    iget-boolean v1, v0, LIu;->a:Z

    const-string v2, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 7
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-boolean v1, v0, LIu;->b:Z

    const-string v2, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 9
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-object v1, v0, LIu;->c:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.serverClientId"

    .line 11
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-boolean v1, v0, LIu;->d:Z

    const-string v2, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 13
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-object v1, v0, LIu;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.hostedDomain"

    .line 15
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-boolean v1, v0, LIu;->f:Z

    const-string v2, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 17
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    iget-object v1, v0, LIu;->g:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v4, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v5, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    :cond_2
    iget-object v0, v0, LIu;->h:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 22
    invoke-direct/range {v0 .. v7}, LQu;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLVo;Landroid/os/Bundle;LFm;LGm;)V

    return-object p4
.end method
