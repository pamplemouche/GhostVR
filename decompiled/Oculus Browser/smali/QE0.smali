.class public LQE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LvF0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lorg/chromium/chrome/browser/signin/SigninFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninFragment;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQE0;->c:Lorg/chromium/chrome/browser/signin/SigninFragment;

    iput-boolean p2, p0, LQE0;->a:Z

    iput-object p3, p0, LQE0;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, LJ/N;->MKI924$P(Ljava/lang/Object;Z)V

    .line 3
    iget-boolean v0, p0, LQE0;->a:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LQE0;->c:Lorg/chromium/chrome/browser/signin/SigninFragment;

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    const-class v2, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    .line 5
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;->g(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 6
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "SyncManualStartAndroid"

    .line 7
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    const/4 v2, 0x0

    .line 9
    iget-wide v3, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 10
    invoke-static {v3, v4, v0, v2}, LJ/N;->MlP9oGhJ(JLjava/lang/Object;I)V

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, LQE0;->c:Lorg/chromium/chrome/browser/signin/SigninFragment;

    .line 12
    iget v2, v0, Lorg/chromium/chrome/browser/signin/SigninFragment;->Q0:I

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "Signin.SigninCompletedAccessPoint.NewAccountNoExistingAccount"

    goto :goto_1

    :cond_3
    const-string v1, "Signin.SigninCompletedAccessPoint.NotDefault"

    goto :goto_1

    :cond_4
    const-string v1, "Signin.SigninCompletedAccessPoint.WithDefault"

    .line 13
    :goto_1
    iget v0, v0, Lorg/chromium/chrome/browser/signin/SigninFragment;->P0:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 14
    :cond_5
    :goto_2
    iget-object v0, p0, LQE0;->c:Lorg/chromium/chrome/browser/signin/SigninFragment;

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 16
    :cond_6
    iget-object v0, p0, LQE0;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LQE0;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
