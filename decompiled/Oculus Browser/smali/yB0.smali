.class public final synthetic LyB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LyB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, LyB0;->w:Lorg/chromium/chrome/browser/preferences/sync/SyncAndServicesPreferences;

    if-eqz p1, :cond_1

    const-string v0, "Signin_Signin_ConfirmAdvancedSyncSettings"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    const-string v0, "SyncManualStartAndroid"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->l()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-wide v2, v0, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 5
    invoke-static {v2, v3, v0, v1}, LJ/N;->MlP9oGhJ(JLjava/lang/Object;I)V

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    .line 7
    invoke-static {v0}, LJ/N;->MybxXS9_(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
