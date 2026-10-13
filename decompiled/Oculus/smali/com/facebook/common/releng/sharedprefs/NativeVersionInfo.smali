.class public Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;
.super Ljava/lang/Object;
.source "NativeVersionInfo.java"


# annotations
.annotation build Lcom/facebook/annotations/OkToExtend;
.end annotation


# instance fields
.field private mAppVersionCode:I

.field private mAppVersionName:Ljava/lang/String;

.field private mPrefs:Lcom/facebook/crudolib/prefs/LightSharedPreferences;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v5, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionCode:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;

    invoke-direct {v2, v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory$Builder;->build()Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;

    move-result-object v2

    .line 43
    const-string v3, "overtheair_prefs"

    invoke-virtual {v2, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferencesFactory;->getSharedPreferences(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mPrefs:Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 47
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionName:Ljava/lang/String;

    .line 48
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    iget-object v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mPrefs:Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    const-string v1, "native_version"

    invoke-interface {v0, v1, v6}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    if-eq v0, v6, :cond_0

    iget v1, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionCode:I

    if-eq v0, v1, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->clearPrefs()V

    .line 57
    :cond_1
    return-void

    .line 47
    :cond_2
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "NativeVersionInfo"

    const-string v3, "Failed to find PackageInfo for App: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public clearPrefs()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->clear()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "native_version"

    iget v2, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionCode:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public getActivatedBundle()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getAppVersionCode()I
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "native_version_override"

    iget v2, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionCode:I

    invoke-interface {v0, v1, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextBundle()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;->mPrefs:Lcom/facebook/crudolib/prefs/LightSharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
