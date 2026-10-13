.class public abstract LKY;
.super Landroid/app/Application;
.source "PG"


# static fields
.field public static final COMMAND_LINE_FILE:Ljava/lang/String; = "chrome-command-line"

.field public static final PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "chrome"

.field public static volatile sComponent:LR60;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LKY;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "command_line_on_non_rooted_enabled"

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static final a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 1
    sget-object p0, LSU;->k:LSU;

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-boolean v0, p0, LSU;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v1, p0, LSU;->e:Z

    .line 5
    iget-boolean v0, p0, LSU;->d:Z

    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, LSU;->f:LrU;

    invoke-interface {v0}, LrU;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LSU;->b(I)V

    goto :goto_0

    .line 8
    :cond_1
    throw v0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    .line 9
    sget-object p0, LSU;->k:LSU;

    if-eqz p0, :cond_4

    .line 10
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 11
    iget-boolean v0, p0, LSU;->e:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LSU;->e:Z

    goto :goto_0

    .line 13
    :cond_4
    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public static b()LR60;
    .locals 4

    .line 1
    new-instance v0, LS60;

    invoke-direct {v0}, LS60;-><init>()V

    .line 2
    new-instance v1, LlY;

    invoke-direct {v1}, LlY;-><init>()V

    .line 3
    new-instance v2, LV60;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LV60;-><init>(LU60;)V

    .line 4
    iput-object v0, v2, LV60;->a:LS60;

    .line 5
    iput-object v1, v2, LV60;->b:LlY;

    if-nez v1, :cond_0

    .line 6
    new-instance v0, LlY;

    invoke-direct {v0}, LlY;-><init>()V

    iput-object v0, v2, LV60;->b:LlY;

    .line 7
    :cond_0
    new-instance v0, LY60;

    invoke-direct {v0, v2, v3}, LY60;-><init>(LV60;LU60;)V

    return-object v0
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0x14

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c()LR60;
    .locals 2

    .line 1
    sget-object v0, LKY;->sComponent:LR60;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, LKY;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, LKY;->sComponent:LR60;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, LKY;->b()LR60;

    move-result-object v1

    sput-object v1, LKY;->sComponent:LR60;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, LKY;->sComponent:LR60;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-static {}, LzT;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/chromium/chrome/browser/metrics/UmaUtils;->a:J

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    sput-object p0, LzT;->a:Landroid/content/Context;

    const-string p1, "ChromeApplication.attachBaseContext"

    if-eqz v0, :cond_c

    move-object v2, p0

    .line 5
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, "chrome"

    .line 8
    invoke-static {v2}, Lorg/chromium/base/PathUtils;->a(Ljava/lang/String;)V

    const-string v2, "chrome-command-line"

    .line 9
    sget-object v3, LIY;->a:LrU;

    .line 10
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/tmp"

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 12
    check-cast v3, LIY;

    .line 13
    invoke-static {}, LKY;->a()Ljava/lang/Boolean;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "debug_app"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v6

    .line 18
    :goto_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    if-nez v1, :cond_8

    .line 19
    :cond_7
    new-instance v4, Ljava/io/File;

    const-string v1, "/data/local"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LwT;->d(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->e()V

    .line 22
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->e()Landroid/os/Looper;

    move-result-object v1

    .line 24
    sget-object v2, LvU;->a:LtU;

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 26
    :cond_9
    invoke-static {p1, v6}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Application;)V

    .line 28
    new-instance v1, LV50;

    invoke-direct {v1}, LV50;-><init>()V

    .line 29
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v2

    invoke-virtual {v1, v2}, LV50;->a(I)V

    .line 30
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v2, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 31
    invoke-static {}, LbY;->a()LbY;

    move-result-object v1

    check-cast v1, Lorg/chromium/build/BuildHooksAndroidImpl;

    if-eqz v1, :cond_a

    .line 32
    sget-object v1, LJY;->a:LlT;

    .line 33
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v2, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/background_task_scheduler/ChromeBackgroundTaskFactory;->setAsDefault()V

    goto :goto_4

    .line 35
    :cond_a
    throw v6

    .line 36
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "App out of date, getResources() null, closing app."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_4
    const-string v1, ""

    .line 37
    sput-object v1, Lorg/chromium/base/BuildInfo;->n:Ljava/lang/String;

    .line 38
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-nez v1, :cond_d

    .line 39
    sget-boolean v1, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;->c:Z

    if-nez v1, :cond_d

    .line 40
    new-instance v1, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;

    .line 41
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/crash/PureJavaExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    :cond_d
    invoke-static {}, LkW;->b()V

    .line 44
    invoke-virtual {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 45
    sput-object v1, Lorg/chromium/base/JNIUtils;->b:Ljava/lang/ClassLoader;

    .line 46
    sget-object v1, LuZ;->a:[Ljava/lang/String;

    sget-object v2, LuZ;->b:[Ljava/lang/String;

    .line 47
    sput-object v1, Lorg/chromium/ui/base/ResourceBundle;->a:[Ljava/lang/String;

    .line 48
    sput-object v2, Lorg/chromium/ui/base/ResourceBundle;->b:[Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 49
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Application;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, LzT;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, LNl0;->c:LNl0;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, LNl0;

    invoke-direct {p1}, LNl0;-><init>()V

    sput-object p1, LNl0;->c:LNl0;

    .line 5
    :cond_0
    sget-object p1, LNl0;->c:LNl0;

    .line 6
    iget-boolean v0, p1, LNl0;->b:Z

    .line 7
    invoke-virtual {p1}, LNl0;->a()V

    .line 8
    iget-boolean v1, p1, LNl0;->b:Z

    if-eq v0, v1, :cond_1

    .line 9
    iget-object p1, p1, LNl0;->a:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMl0;

    check-cast v0, LCl0;

    .line 10
    invoke-virtual {v0}, LCl0;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    .line 3
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 7
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "preloaded_fonts"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "android.app.ActivityThread"

    .line 8
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentActivityThread"

    new-array v5, v1, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getPackageManager"

    new-array v5, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "sPackageManager"

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v5, "android.content.pm.IPackageManager"

    .line 13
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v7, v0, [Ljava/lang/Class;

    aput-object v5, v7, v1

    .line 16
    new-instance v5, LbT0;

    invoke-direct {v5, v4}, LbT0;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v7, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v1, "FontWorkaround"

    const-string v3, "Installing workaround failed, continuing without"

    .line 18
    invoke-static {v1, v3, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_0
    sget-object v0, LSU;->k:LSU;

    if-eqz v0, :cond_3

    .line 20
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 21
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 22
    new-instance v2, LRU;

    invoke-direct {v2, v0}, LRU;-><init>(LSU;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void

    .line 23
    :cond_3
    throw v2
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    invoke-static {p1}, LKY;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, LjZ;->a:LCT;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, LCT;->a()V

    .line 5
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->i:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p1}, LKY;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    move-result-object p1

    iget-object p1, p1, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->c:Lo60;

    invoke-virtual {p1}, Lo60;->a()V

    .line 8
    :cond_3
    invoke-static {}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->d()Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    :goto_1
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Application;->setTheme(I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LKY;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
