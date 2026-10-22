.class public Lcom/oculus/crashreporter/OculusCrashReporter;
.super Lcom/facebook/acra/reporter/BaseCrashReporter;
.source "OculusCrashReporter.java"


# static fields
.field public static final URI_UPLOAD_CRASH:Ljava/lang/String; = "https://ghostvr.pamplemouche.com/mobile/generic_android_crash_logs/"

.field private static final VERIFY_SSL_CERTS:Z = true


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/acra/reporter/BaseCrashReporter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getErrorUploadURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "https://ghostvr.pamplemouche.com/mobile/generic_android_crash_logs/"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkSSLCertsOnCrashReport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
