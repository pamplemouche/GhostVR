.class public final Lcom/oculus/vrshell/util/HorizonUtil;
.super Ljava/lang/Object;
.source "HorizonUtil.java"


# static fields
.field public static DEFAULT_BROWSER_OCULUS:Ljava/lang/String;

.field public static DEFAULT_BROWSER_SAMSUNG:Ljava/lang/String;

.field private static final PREF_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 26
    const-class v0, Lcom/oculus/vrshell/util/HorizonUtil;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    const-string v0, "carmel"

    .line 29
    sput-object v0, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_OCULUS:Ljava/lang/String;

    const-string v0, "samsung_internet_browser"

    .line 30
    sput-object v0, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_SAMSUNG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "id"

    const-string v2, "default_browser"

    const-string v3, "has_finished_ipd_adjust"

    const-string v4, "has_finished_monterey_nux"

    const-string v5, "has_finished_nux"

    const-string v6, "has_opted_out_hsw"

    const-string v7, "has_seen_focus"

    const-string v8, "has_seen_internet_browser_prompt"

    const-string v9, "has_seen_long_hsw"

    const-string v10, "has_seen_nux"

    const-string v11, "has_opted_out_of_malibu_recenter"

    const-string v12, "high_priority_apps_pkgs"

    const-string v13, "nux_state"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/HorizonUtil;->PREF_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;
    .locals 2

    .line 164
    const-class v0, Lcom/oculus/vrshell/util/HorizonUtil;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary;

    invoke-direct {v1, p0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 168
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    sget-object p0, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {p0, p1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 168
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getApplicationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 211
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p0

    .line 212
    iget-object p0, p0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .line 148
    const-class v0, Lcom/oculus/vrshell/util/HorizonUtil;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary;

    invoke-direct {v1, p0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 152
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    sget-object p0, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {p0}, Lcom/oculus/libraryapi/OVRLibrary;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 152
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getCloudStorageStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;
    .locals 0

    .line 217
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p0

    if-nez p0, :cond_0

    .line 220
    sget-object p0, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    return-object p0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    return-object p0
.end method

.method public static getProfilePrefs(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/oculus/vrshell/util/CollectionUtil;->toArray(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "content://com.oculus.horizon/profile"

    .line 89
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 93
    sget-object p0, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Failed to Query Horizon profile"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 97
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 100
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    sget-object v3, Lcom/oculus/vrshell/util/HorizonUtil;->PREF_KEYS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v4, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 111
    :cond_4
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Horizon returned no user profile information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getSafeApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 197
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 202
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 205
    sget-object p1, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Unknown"

    return-object p0
.end method

.method public static hasUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 227
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplication(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/oculus/library/model/App;->hasUpdate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setProfilePref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    sget-object v0, Lcom/oculus/vrshell/util/HorizonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Pref:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.oculus.horizon/profile"

    .line 127
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "has_"

    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    .line 133
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static startUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 234
    const-class v0, Lcom/oculus/vrshell/util/HorizonUtil;

    monitor-enter v0

    .line 235
    :try_start_0
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/oculus/libraryapi/OVRLibrary;

    invoke-direct {v1, p0}, Lcom/oculus/libraryapi/OVRLibrary;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 238
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    sget-object p0, Lcom/oculus/vrshell/util/HorizonUtil;->ovrLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {p0, p1, v0}, Lcom/oculus/libraryapi/OVRLibrary;->downloadAndInstall(Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    return-void

    :catchall_0
    move-exception p0

    .line 238
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
