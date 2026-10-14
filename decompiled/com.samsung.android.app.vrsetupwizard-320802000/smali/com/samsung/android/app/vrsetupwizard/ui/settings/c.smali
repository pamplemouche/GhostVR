.class public Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;
.super Landroid/support/v7/preference/s;

# interfaces
.implements Landroid/support/v7/preference/p;


# instance fields
.field private a:Landroid/support/v7/preference/Preference;

.field private b:Landroid/support/v7/preference/Preference;

.field private c:Landroid/support/v7/preference/Preference;

.field private d:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/preference/s;-><init>()V

    return-void
.end method

.method private ag()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->b:Landroid/support/v7/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private ah()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearApplicationData res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private ai()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/p;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v1, v0

    const-wide/16 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lorg/apache/a/a/a;->b(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Lorg/apache/a/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/Throwable;)V

    const-string p1, "unknown"

    :goto_0
    return-object p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    new-instance p2, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "classes.dex"

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object p1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :cond_0
    :try_start_3
    const-string p1, "getEntry failed. classes.dex"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->close()V

    throw p1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->a(Ljava/lang/Throwable;)V

    :goto_1
    const-string p1, "unknown build time"

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->d(I)V

    const p1, 0x7f120001

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a_(ILjava/lang/String;)V

    const-string p1, "key_clear_data"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->ai()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    const-string p1, "key_version"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->b:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->b:Landroid/support/v7/preference/Preference;

    const p2, 0x7f0f00cc

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->d(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->ag()V

    const-string p1, "key_open_source_licenses"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->c:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->c:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    const-string p1, "key_category_app_update"

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->d:Landroid/support/v7/preference/Preference;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->d:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/p;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->ah()V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->c:Landroid/support/v7/preference/Preference;

    const/high16 v1, 0x20000000

    if-ne p1, v0, :cond_1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/OpenSourceActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->d:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->l()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/android/app/vrsetupwizard/ui/settings/UpdateSettingActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "storage_manage"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/settings/c;->a(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
