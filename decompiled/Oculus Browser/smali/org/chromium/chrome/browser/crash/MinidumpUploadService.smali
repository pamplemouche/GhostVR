.class public Lorg/chromium/chrome/browser/crash/MinidumpUploadService;
.super Landroid/app/IntentService;
.source "PG"


# static fields
.field public static w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "Other"

    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "Content-Disposition: form-data; name=\"ptype\""

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 17
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_1
    :try_start_2
    const-string v3, "browser"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "Browser"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    :try_start_3
    const-string v3, "renderer"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "Renderer"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_3
    :try_start_4
    const-string v3, "gpu-process"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "GPU"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 23
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_4
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_5
    :goto_0
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_1
    :try_start_5
    const-string v3, "MinidmpUploadService"

    const-string v4, "Error while reading crash file %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 p0, 0x1

    .line 24
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, p0

    invoke-static {v3, v4, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    .line 25
    :goto_3
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a()V
    .locals 5

    .line 1
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3
    iget-object v0, v0, LeB0;->b:Landroid/content/SharedPreferences;

    const-string v2, "in_metrics_sample"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isClientInMetricsSample"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v2, "force-dump-upload"

    invoke-virtual {v0, v2}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "isUploadEnabledForTests"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    .line 8
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 9
    const-class v4, LW50;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x2b

    invoke-direct {v0, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 11
    invoke-static {v0}, LST0;->a(Landroid/app/job/JobInfo$Builder;)V

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    .line 26
    new-instance v0, LRT0;

    .line 27
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, LRT0;-><init>(Ljava/io/File;)V

    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 30
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 31
    const-class v3, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.apps.chrome.crash.ACTION_UPLOAD"

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v2, "minidump_file"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, LRT0;->a()Ljava/io/File;

    move-result-object v0

    const-string v2, "uploads.log"

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "upload_log"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static browserCrashMetricsInitialized()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 8

    .line 1
    new-instance v0, LRT0;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, LRT0;-><init>(Ljava/io/File;)V

    const/4 v1, 0x3

    .line 4
    sget-object v2, LRT0;->b:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v0, v2}, LRT0;->a(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LRT0;->b(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v1, :cond_0

    .line 9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "MinidmpUploadService"

    const-string v3, "Attempting to upload accumulated crash dumps."

    .line 11
    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v2, v0, v4

    .line 13
    invoke-static {v2}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->a(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static didBrowserCrashRecently()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static tryUploadCrashDumpWithLocalId(Ljava/lang/String;)V
    .locals 12

    const-string v0, "MinidmpUploadService"

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v2, LRT0;

    .line 3
    sget-object v3, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, LRT0;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, LRT0;->a(Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    const-string v6, ".forced"

    const-string v7, ".skipped"

    const-string v8, ".dmp"

    if-ge v5, v4, :cond_3

    aget-object v9, v2, v5

    .line 6
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 7
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v1

    .line 10
    invoke-virtual {v10, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v9, v3

    :goto_2
    if-nez v9, :cond_4

    const-string v2, "Could not find a crash dump with local ID "

    .line 11
    invoke-static {v2, p0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, ".up"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Refusing to reset upload attempt state for a file that has already been successfully uploaded: "

    .line 13
    invoke-static {p0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 14
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "CrashFileManager"

    .line 15
    invoke-static {v4, p0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_5
    new-instance p0, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, LRT0;->b(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ".try"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".try0"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_6
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v9, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move-object p0, v3

    :goto_4
    if-nez p0, :cond_8

    const-string p0, "Could not rename the file "

    .line 23
    invoke-static {p0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for re-upload"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_8
    invoke-static {}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->a()V

    goto :goto_5

    .line 26
    :cond_9
    invoke-static {p0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->a(Ljava/io/File;)V

    :goto_5
    return-void

    :cond_a
    :goto_6
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot force crash upload since local crash id is absent."

    .line 27
    invoke-static {v0, v1, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.chrome.crash.ACTION_UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MinidmpUploadService"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "Got unknown action from intent: "

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "minidump_file"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "Cannot upload crash data since specified minidump "

    const-string v3, " is not present."

    .line 7
    invoke-static {p1, v0, v3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_3
    invoke-static {v0}, LRT0;->b(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_d

    if-gez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v6, "upload_log"

    .line 9
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, LeB0;->d()LeB0;

    .line 12
    new-instance p1, Ljava/lang/Exception;

    const-string v6, "Oculus Browser should not be using MinidumpUploadCallable"

    invoke-direct {p1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v2, p1}, Lorg/chromium/base/JavaExceptionReporter;->a(ZLjava/lang/Throwable;)V

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v6, "Browser"

    const/4 v7, 0x1

    if-nez p1, :cond_6

    const-string p1, "up"

    const-string v1, "dmp"

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forced"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    sget-object v0, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    :cond_5
    sget-object v0, Lay0;->a:Lcy0;

    .line 21
    iget-object v1, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1}, Lcy0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v7

    .line 22
    iget-object v2, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 23
    invoke-virtual {v0, p1}, Lcy0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    :cond_6
    if-ne p1, v7, :cond_c

    add-int/2addr v4, v7

    if-ne v4, v5, :cond_8

    .line 25
    invoke-static {v0}, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 27
    sget-object v6, Lorg/chromium/chrome/browser/crash/MinidumpUploadService;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    :cond_7
    sget-object v6, Lay0;->a:Lcy0;

    .line 29
    iget-object v8, v6, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v6, p1}, Lcy0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v8, v7

    .line 30
    iget-object v7, v6, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 31
    invoke-virtual {v6, p1}, Lcy0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7, p1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, LRT0;->c(Ljava/lang/String;)I

    move-result v6

    const-string v7, ".try"

    if-ltz v6, :cond_9

    add-int/lit8 v8, v6, 0x1

    .line 35
    invoke-static {v7, v6}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v6, "1"

    .line 36
    invoke-static {p1, v7, v6}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    move-object p1, v6

    :goto_1
    if-eqz p1, :cond_b

    if-ge v4, v5, :cond_c

    .line 38
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 39
    invoke-static {}, LeB0;->d()LeB0;

    move-result-object v0

    .line 40
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, La60;

    invoke-direct {v2, p1, v0, v6}, La60;-><init>(Landroid/content/Context;LTT0;LZ50;)V

    const-wide/16 v3, 0x0

    .line 41
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_b
    const-string p1, "Failed to rename minidump "

    .line 42
    invoke-static {p1, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    :goto_3
    const-string p1, "Giving up on trying to upload "

    const-string v3, " after failing to read a valid attempt number."

    .line 43
    invoke-static {p1, v0, v3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_e
    :goto_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Cannot upload crash data since minidump is absent."

    .line 44
    invoke-static {v1, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method
