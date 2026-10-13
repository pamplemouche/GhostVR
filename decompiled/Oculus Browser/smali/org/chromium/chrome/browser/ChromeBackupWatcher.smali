.class public Lorg/chromium/chrome/browser/ChromeBackupWatcher;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/app/backup/BackupManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->a:Landroid/app/backup/BackupManager;

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "first_backup_done"

    .line 5
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->a:Landroid/app/backup/BackupManager;

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    :cond_1
    new-instance v1, LNY;

    invoke-direct {v1, p0}, LNY;-><init>(Lorg/chromium/chrome/browser/ChromeBackupWatcher;)V

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static createChromeBackupWatcher()Lorg/chromium/chrome/browser/ChromeBackupWatcher;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/ChromeBackupWatcher;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeBackupWatcher;-><init>()V

    return-object v0
.end method

.method private onBackupPrefsChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->a:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "google.services.username"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->onBackupPrefsChanged()V

    return-void

    .line 3
    :cond_0
    sget-object v0, LMY;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/chromium/chrome/browser/ChromeBackupWatcher;->onBackupPrefsChanged()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
