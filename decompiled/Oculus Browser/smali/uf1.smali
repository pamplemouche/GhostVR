.class public Luf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFf1;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lvf1;


# direct methods
.method public constructor <init>(Lwf1;Landroid/content/Context;Ljava/lang/String;Lvf1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Luf1;->a:Landroid/content/Context;

    iput-object p3, p0, Luf1;->b:Ljava/lang/String;

    iput-object p4, p0, Luf1;->c:Lvf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Luf1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Luf1;->a:Landroid/content/Context;

    iget-object v2, p0, Luf1;->b:Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v3, 0x80

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "org.chromium.webapk.shell_apk.shellApkVersion"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "org.chromium.webapk.shell_apk.runtimeHost"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    :goto_1
    iget-object p1, p0, Luf1;->c:Lvf1;

    .line 8
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-interface {p1, v0, v1}, Lvf1;->a(ZLjava/lang/String;)V

    return-void

    .line 9
    :cond_2
    invoke-static {p1}, LNf1;->a(Landroid/os/IBinder;)LOf1;

    move-result-object p1

    .line 10
    check-cast p1, LMf1;

    :try_start_1
    invoke-virtual {p1}, LMf1;->A()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "cr_WebApkIdentityService"

    const-string v2, "Failed to get runtime host from the Identity service."

    .line 11
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_2
    iget-object p1, p0, Luf1;->c:Lvf1;

    .line 13
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-interface {p1, v0, v1}, Lvf1;->a(ZLjava/lang/String;)V

    return-void
.end method
