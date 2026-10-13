.class public Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;
.super Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;
.source "OverTheAirBundleInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static otaBundleInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;


# instance fields
.field private mAssetsUnpackerName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/common/releng/sharedprefs/NativeVersionInfo;-><init>(Landroid/content/Context;)V

    .line 92
    const-string v0, "OtaUnpacker"

    iput-object v0, p0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->mAssetsUnpackerName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->otaBundleInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    invoke-direct {v0, p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->otaBundleInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;

    .line 111
    :cond_0
    sget-object v0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->otaBundleInfo:Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private persistBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 261
    const-string v0, "main.jsbundle"

    invoke-interface {p1, v0}, Lcom/facebook/fbreact/autoupdater/ResourceBundle;->getResource(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 267
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->apply()V

    .line 272
    :goto_1
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2, v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method clearActivated()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activated"

    invoke-interface {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activated_js_file_size"

    invoke-interface {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->apply()V

    .line 276
    return-void
.end method

.method clearNext()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next"

    invoke-interface {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_js_file_size"

    invoke-interface {v0, v1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method public getActivatedBundle()I
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "activated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getActiveBundleSize()J
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "activated_js_file_size"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDownloadEndTime()J
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "download_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextBundle()I
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "next"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getNextBundleSize()J
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    const-string v1, "next_js_file_size"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public markBundleAsActive(I)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->getPrefs()Lcom/facebook/crudolib/prefs/LightSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences;->edit()Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activated"

    invoke-interface {v0, v1, p1}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/crudolib/prefs/LightSharedPreferences$Editor;->apply()V

    .line 133
    return-void
.end method

.method persistActiveBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;)V
    .locals 1

    .prologue
    .line 245
    const-string v0, "activated_js_file_size"

    invoke-direct {p0, p1, v0}, Lcom/facebook/fbreact/autoupdater/OverTheAirBundleInfo;->persistBundleSize(Lcom/facebook/fbreact/autoupdater/ResourceBundle;Ljava/lang/String;)V

    .line 246
    return-void
.end method
