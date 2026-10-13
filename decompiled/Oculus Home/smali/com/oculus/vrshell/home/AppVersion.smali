.class public Lcom/oculus/vrshell/home/AppVersion;
.super Ljava/lang/Object;
.source "AppVersion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    :try_start_0
    const-string v2, "com.oculus.vrshell.home"

    .line 16
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.oculus.vrshell.home"

    invoke-static {p0, v3}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    .line 17
    .local v0, "appDetails":Lcom/oculus/panellib/AppDetails;
    iget-object v3, v0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "appDetails":Lcom/oculus/panellib/AppDetails;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 19
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "99999.99999.99999.99999.99999"

    goto :goto_0
.end method
