.class public Lcom/oculus/systemutilities/SystemUtilitiesApplication;
.super Landroid/app/Application;
.source "SystemUtilitiesApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;,
        Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell.MainActivity"

.field public static final FB_SYSTEM_UTILITIES_APP_ID:Ljava/lang/String; = "1817688451682869"

.field public static final FB_SYSTEM_UTILITIES_APP_NAME:Ljava/lang/String; = "SystemUtilities"

.field public static final FB_SYSTEM_UTILITIES_APP_SECRET:Ljava/lang/String; = "1955525aa89aa9559a7e0835e6af9e09"

.field public static final OCULUS_SYSTEM_UTILITIES_APP_ID:Ljava/lang/String; = "1689311011174858"

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.oculus.browser"

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String; = "com.oculus.horizon"

.field public static final PACKAGE_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final PACKAGE_NAME_SYSTEM_ACTIVITIES:Ljava/lang/String; = "com.oculus.systemactivities"

.field public static final PACKAGE_NAME_SYSTEM_DRIVER:Ljava/lang/String; = "com.oculus.systemdriver"

.field public static final PACKAGE_NAME_VRDRIVER:Ljava/lang/String; = "com.oculus.vrdriver"

.field private static final TAG:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson;

.field public static final handler:Landroid/os/Handler;

.field public static instance:Lcom/oculus/systemutilities/SystemUtilitiesApplication;

.field private static mAppDetails:Lcom/oculus/panellib/AppDetails;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->handler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static clearApplicationData(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/asynclocal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "asyncStorageDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 202
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static flushAnalytics()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/oculus/logging/legacy/OculusLogger;->flushNow()V

    .line 131
    return-void
.end method

.method public static getHasRequiredMobileVersions(Ljava/lang/String;)Z
    .locals 11
    .param p0, "requiredMobileVersionsJson"    # Ljava/lang/String;
    .annotation build Lcom/oculus/systemutilities/UsedByNative;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    const/4 v3, 0x0

    .line 153
    .local v3, "requiredMobileVersions":Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;
    :try_start_0
    sget-object v4, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->gson:Lcom/google/gson/Gson;

    const-class v7, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;

    invoke-virtual {v4, p0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;

    move-object v3, v0
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    if-eqz v3, :cond_1

    .line 163
    invoke-static {v3}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;->access$000(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersions;)[Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;

    move-result-object v7

    array-length v8, v7

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v2, v7, v4

    .line 164
    .local v2, "requiredMobileVersion":Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    sget-object v9, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->instance:Lcom/oculus/systemutilities/SystemUtilitiesApplication;

    invoke-static {v2}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;->access$100(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v1

    .line 166
    .local v1, "details":Lcom/oculus/panellib/AppDetails;
    iget v9, v1, Lcom/oculus/panellib/AppDetails;->versionCode:I

    invoke-static {v2}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;->access$200(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;)I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 167
    sget-object v4, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Requires version %d of %s but found version %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 172
    invoke-static {v2}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;->access$200(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 173
    invoke-static {v2}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;->access$100(Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    iget v10, v1, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 169
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 182
    .end local v1    # "details":Lcom/oculus/panellib/AppDetails;
    .end local v2    # "requiredMobileVersion":Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    :goto_2
    return v4

    .line 163
    .restart local v1    # "details":Lcom/oculus/panellib/AppDetails;
    .restart local v2    # "requiredMobileVersion":Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "details":Lcom/oculus/panellib/AppDetails;
    .end local v2    # "requiredMobileVersion":Lcom/oculus/systemutilities/SystemUtilitiesApplication$RequiredMobileVersion;
    :cond_1
    move v4, v6

    .line 182
    goto :goto_2

    .line 157
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 135
    .local v1, "myPid":I
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 136
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 140
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_0

    .line 141
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 146
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private initAnalytics(Ljava/lang/String;)V
    .locals 11
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    .line 100
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "deviceName":Ljava/lang/String;
    const-string v3, "1817688451682869"

    .line 104
    .local v3, "appId":Ljava/lang/String;
    const-string v4, "1955525aa89aa9559a7e0835e6af9e09"

    .line 105
    .local v4, "loginSecret":Ljava/lang/String;
    const/4 v10, 0x0

    .line 106
    .local v10, "oculusUserId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 108
    .local v9, "facebookUserId":Ljava/lang/String;
    new-instance v7, Lcom/oculus/systemutilities/SystemUtilitiesApplication$1;

    invoke-direct {v7, p0, p1}, Lcom/oculus/systemutilities/SystemUtilitiesApplication$1;-><init>(Lcom/oculus/systemutilities/SystemUtilitiesApplication;Ljava/lang/String;)V

    .line 118
    .local v7, "interceptor":Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;
    sget-object v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mContext:Landroid/content/Context;

    const-string v2, "https://graph.facebook.com/logging_client_events"

    sget-object v5, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    iget-object v5, v5, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    sget-object v6, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    iget v6, v6, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 125
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;)V

    .line 127
    return-void
.end method

.method private initJni()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    const-string v1, "fbjni"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    const-string v2, "Load JNI failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    sput-object p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->instance:Lcom/oculus/systemutilities/SystemUtilitiesApplication;

    .line 59
    invoke-virtual {p0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v1

    sput-object v1, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    .line 62
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 63
    invoke-direct {p0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->initJni()V

    .line 65
    invoke-static {p0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "processName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->initAnalytics(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v1, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    const-string v2, "endpoint: https://graph.facebook.com/logging_client_events"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->TAG:Ljava/lang/String;

    const-string v1, "onUserId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "userId changed from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mUserId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/oculus/systemutilities/SystemUtilitiesApplication;->mUserId:Ljava/lang/String;

    .line 88
    :cond_1
    return-void
.end method
