.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/pm/PackageInstaller;

.field private c:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mInstallPackageName"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mApkPath"

    invoke-static {p3, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCallBack"

    invoke-static {p4, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;

    const-string p1, "[APKInstaller]"

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "mContext.packageManager"

    invoke-static {p1, p2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    const-string p2, "mContext.packageManager.packageInstaller"

    invoke-static {p1, p2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    new-instance p1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)V

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionCallback;

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->c:Landroid/content/pm/PackageInstaller$SessionCallback;

    return-void
.end method

.method private final a(Landroid/content/Context;I)Landroid/content/IntentSender;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "pendingIntent"

    invoke-static {p1, p2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    const-string p2, "pendingIntent.intentSender"

    invoke-static {p1, p2}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->g:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;)Landroid/content/pm/PackageInstaller;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doInstallviaPackageInstaller start Filename ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/io/InputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " doInstallviaPackageInstaller length is ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    cmp-long v6, v3, v1

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->c:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doInstallviaPackageInstaller creating Session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doInstallviaPackageInstaller  Session id created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, La/c/b/j;->a()V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-wide v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v4

    const/high16 v5, 0x10000

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    int-to-long v10, v8

    cmp-long v12, v10, v1

    if-gez v12, :cond_4

    invoke-virtual {v0, v6, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    add-int/2addr v8, v10

    if-nez v4, :cond_3

    invoke-static {}, La/c/b/j;->a()V

    :cond_3
    invoke-virtual {v4, v6, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v9, v10

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    int-to-long v10, v9

    div-long/2addr v10, v1

    long-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-nez v4, :cond_5

    invoke-static {}, La/c/b/j;->a()V

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->d:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "pi"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b:Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->a(Landroid/content/Context;I)Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method
