.class public Lcom/oculus/browser/acra/reporter/OculusCrashReporter;
.super Lcom/oculus/browser/acra/reporter/BaseCrashReporter;
.source "PG"


# static fields
.field public static final URI_UPLOAD_CRASH:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/mobile/generic_android_crash_logs/"

.field public static final VERIFY_SSL_CERTS:Z = true


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/reporter/BaseCrashReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getErrorUploadURI()Landroid/net/Uri;
    .locals 2

    const-string v0, "https://ghostvr.pamplemouche.com/mobile/generic_android_crash_logs/"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "1562231310457908"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
