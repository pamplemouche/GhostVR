.class public final synthetic LnB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LnB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, LnB0;->w:Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->h()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Lz2;->N:LY2;

    if-eqz v1, :cond_1

    .line 4
    new-instance v3, Lq2;

    invoke-direct {v3, v1}, Lq2;-><init>(LY2;)V

    .line 5
    new-instance v1, LKG0;

    invoke-direct {v1}, LKG0;-><init>()V

    .line 6
    invoke-virtual {v1, v0, v2}, Lz2;->a(Lz2;I)V

    const-string v0, "enter_password"

    .line 7
    invoke-virtual {v1, v3, v0}, Ls2;->a(Ld3;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    throw v3

    .line 9
    :cond_2
    iget-object v1, v0, Lz2;->N:LY2;

    if-eqz v1, :cond_3

    .line 10
    new-instance v3, Lq2;

    invoke-direct {v3, v1}, Lq2;-><init>(LY2;)V

    .line 11
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 12
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->c()I

    move-result v1

    iget-object v4, v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 13
    iget-wide v5, v4, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 14
    invoke-static {v5, v6, v4}, LJ/N;->MaVJ6PiJ(JLjava/lang/Object;)J

    move-result-wide v4

    .line 15
    iget-object v6, v0, Lorg/chromium/chrome/browser/preferences/sync/ManageSyncPreferences;->E0:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 16
    iget-wide v7, v6, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->b:J

    .line 17
    invoke-static {v7, v8, v6}, LJ/N;->MNBk3pKK(JLjava/lang/Object;)Z

    move-result v6

    .line 18
    new-instance v7, LOG0;

    invoke-direct {v7}, LOG0;-><init>()V

    .line 19
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "arg_current_type"

    .line 20
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arg_passphrase_time"

    .line 21
    invoke-virtual {v8, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "arg_is_encrypt_everything_allowed"

    .line 22
    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {v7, v8}, Lz2;->g(Landroid/os/Bundle;)V

    const-string v1, "password_type"

    .line 24
    invoke-virtual {v7, v3, v1}, Ls2;->a(Ld3;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v7, v0, v2}, Lz2;->a(Lz2;I)V

    :goto_0
    return-void

    .line 26
    :cond_3
    throw v3
.end method
