.class public Lcom/oculus/vrshell/home/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;,
        Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    }
.end annotation


# static fields
.field public static final ACTIVITY_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell.MainActivity"

.field public static final FB_HOME_APP_ID:Ljava/lang/String; = "285486028533521"

.field public static final FB_HOME_APP_NAME:Ljava/lang/String; = "ShellHome"

.field public static final FB_HOME_APP_SECRET:Ljava/lang/String; = "e7d2f844007ab5b1caedd7cc78c99ec2"

.field public static final OCULUS_HOME_APP_ID:Ljava/lang/String; = "1481000308606657"

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.oculus.browser"

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String; = "com.oculus.horizon"

.field public static final PACKAGE_NAME_MEDIA_PLAYER:Ljava/lang/String; = "com.oculus.mediaplayer"

.field public static final PACKAGE_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final PACKAGE_NAME_SHELL_HOME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final PACKAGE_NAME_SYSTEM_ACTIVITIES:Ljava/lang/String; = "com.oculus.systemactivities"

.field public static final PACKAGE_NAME_SYSTEM_DRIVER:Ljava/lang/String; = "com.oculus.systemdriver"

.field public static final PACKAGE_NAME_VRDRIVER:Ljava/lang/String; = "com.oculus.vrdriver"

.field private static final TAG:Ljava/lang/String;

.field private static gson:Lcom/google/gson/Gson;

.field public static final handler:Landroid/os/Handler;

.field public static instance:Lcom/oculus/vrshell/home/HomeApplication;

.field private static mAppDetails:Lcom/oculus/panellib/AppDetails;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/vrshell/home/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/HomeApplication;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/HomeApplication;->gson:Lcom/google/gson/Gson;

    .line 64
    const/4 v0, 0x4

    invoke-static {v0}, Llibraries/debug/log/BLog;->setLogLevel(I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static clearApplicationData(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
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

    .line 246
    .local v0, "asyncStorageDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 250
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static flushAnalytics()V
    .locals 0

    .prologue
    .line 173
    invoke-static {}, Lcom/oculus/logging/legacy/OculusLogger;->flushNow()V

    .line 174
    return-void
.end method

.method public static getHasRequiredMobileVersions(Ljava/lang/String;)Z
    .locals 12
    .param p0, "requiredMobileVersionsJson"    # Ljava/lang/String;
    .annotation build Lcom/oculus/vrshell/home/UsedByNative;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    const/4 v4, 0x0

    .line 196
    .local v4, "requiredMobileVersions":Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;
    :try_start_0
    sget-object v5, Lcom/oculus/vrshell/home/HomeApplication;->gson:Lcom/google/gson/Gson;

    const-class v8, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;

    invoke-virtual {v5, p0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;

    move-object v4, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :goto_0
    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;->access$000(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;)[Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 208
    invoke-static {v4}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;->access$000(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersions;)[Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;

    move-result-object v8

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_2

    aget-object v3, v8, v5

    .line 209
    .local v3, "requiredMobileVersion":Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    invoke-static {v3}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->access$100(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 200
    .end local v3    # "requiredMobileVersion":Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v5, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v8, "Error parsing required mobile versions: invalid structure."

    invoke-static {v5, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Lcom/google/gson/JsonParseException;
    sget-object v5, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v8, "Error parsing required mobile versions: invalid json."

    invoke-static {v5, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v2    # "e":Lcom/google/gson/JsonParseException;
    .restart local v3    # "requiredMobileVersion":Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    :cond_1
    sget-object v10, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    invoke-static {v3}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->access$100(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v1

    .line 214
    .local v1, "details":Lcom/oculus/panellib/AppDetails;
    iget v10, v1, Lcom/oculus/panellib/AppDetails;->versionCode:I

    invoke-static {v3}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->access$200(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 215
    sget-object v5, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Requires version %d of %s but found version %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 220
    invoke-static {v3}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->access$200(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 221
    invoke-static {v3}, Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;->access$100(Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    iget v11, v1, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 222
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    .line 217
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 230
    .end local v1    # "details":Lcom/oculus/panellib/AppDetails;
    .end local v3    # "requiredMobileVersion":Lcom/oculus/vrshell/home/HomeApplication$RequiredMobileVersion;
    :goto_2
    return v5

    :cond_2
    move v5, v7

    goto :goto_2
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 178
    .local v1, "myPid":I
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 181
    .local v3, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 182
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 183
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_0

    .line 184
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 189
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
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    .line 142
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/DeviceEnvironmentModuleImpl;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "deviceName":Ljava/lang/String;
    const-string v3, "285486028533521"

    .line 146
    .local v3, "appId":Ljava/lang/String;
    const-string v4, "e7d2f844007ab5b1caedd7cc78c99ec2"

    .line 147
    .local v4, "loginSecret":Ljava/lang/String;
    const/4 v10, 0x0

    .line 148
    .local v10, "oculusUserId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 150
    .local v9, "facebookUserId":Ljava/lang/String;
    new-instance v7, Lcom/oculus/vrshell/home/HomeApplication$1;

    invoke-direct {v7, p0, p1}, Lcom/oculus/vrshell/home/HomeApplication$1;-><init>(Lcom/oculus/vrshell/home/HomeApplication;Ljava/lang/String;)V

    .line 161
    .local v7, "interceptor":Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->mContext:Landroid/content/Context;

    const-string v2, "https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

    sget-object v5, Lcom/oculus/vrshell/home/HomeApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    iget-object v5, v5, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    sget-object v6, Lcom/oculus/vrshell/home/HomeApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    iget v6, v6, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 168
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-static/range {v0 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;)V

    .line 170
    return-void
.end method

.method private initJni()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    const-string v1, "fbjni"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v2, "Load JNI failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v1, "onAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "accessToken changed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/oculus/vrshell/home/HomeApplication;->mAccessToken:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/oculus/logging/legacy/OculusLogger;->setAccessToken(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 69
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "timestamp onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 72
    sput-object p0, Lcom/oculus/vrshell/home/HomeApplication;->instance:Lcom/oculus/vrshell/home/HomeApplication;

    .line 73
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/oculus/vrshell/home/HomeApplication;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/HomeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v2

    sput-object v2, Lcom/oculus/vrshell/home/HomeApplication;->mAppDetails:Lcom/oculus/panellib/AppDetails;

    .line 76
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "timestamp start SoLoader.init"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x2

    :try_start_0
    invoke-static {p0, v2}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "timestamp start initJni"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/oculus/vrshell/home/HomeApplication;->initJni()V

    .line 84
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "timestamp initJni end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p0}, Lcom/oculus/vrshell/home/HomeApplication;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "processName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/oculus/vrshell/home/HomeApplication;->initAnalytics(Ljava/lang/String;)V

    .line 89
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "endpoint: https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 79
    .end local v1    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    sget-object v2, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v3, "IOException during init"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/oculus/vrshell/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v1, "onUserId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oculus/vrshell/home/HomeApplication;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "userId changed from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/vrshell/home/HomeApplication;->mUserId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/oculus/vrshell/home/HomeApplication;->mUserId:Ljava/lang/String;

    .line 109
    :cond_1
    return-void
.end method
