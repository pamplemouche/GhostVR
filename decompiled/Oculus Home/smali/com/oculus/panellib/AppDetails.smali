.class public Lcom/oculus/panellib/AppDetails;
.super Ljava/lang/Object;
.source "AppDetails.java"


# instance fields
.field public final isInstalled:Z

.field public final metaData:Landroid/os/Bundle;

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLandroid/os/Bundle;ILjava/lang/String;)V
    .locals 0
    .param p1, "isInstalled"    # Z
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/oculus/panellib/AppDetails;->isInstalled:Z

    .line 19
    iput-object p2, p0, Lcom/oculus/panellib/AppDetails;->metaData:Landroid/os/Bundle;

    .line 20
    iput p3, p0, Lcom/oculus/panellib/AppDetails;->versionCode:I

    .line 21
    iput-object p4, p0, Lcom/oculus/panellib/AppDetails;->versionName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    return-object v0
.end method

.method private static get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oculus/panellib/AppDetails;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fetchMetaData"    # Z

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "isInstalled":Z
    const/4 v3, 0x0

    .line 28
    .local v3, "metaData":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 29
    .local v6, "versionCode":I
    const-string v7, "0.0"

    .line 32
    .local v7, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 33
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_1

    const/16 v8, 0x80

    :goto_0
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 38
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x1

    .line 39
    if-eqz p2, :cond_0

    .line 40
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 42
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 47
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    new-instance v8, Lcom/oculus/panellib/AppDetails;

    invoke-direct {v8, v2, v3, v6, v7}, Lcom/oculus/panellib/AppDetails;-><init>(ZLandroid/os/Bundle;ILjava/lang/String;)V

    return-object v8

    .line 33
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 44
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "metaData":Landroid/os/Bundle;
    .local v4, "metaData":Landroid/os/Bundle;
    move-object v3, v4

    .end local v4    # "metaData":Landroid/os/Bundle;
    .restart local v3    # "metaData":Landroid/os/Bundle;
    goto :goto_1

    .line 49
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static getWithMetaData(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/oculus/panellib/AppDetails;

    move-result-object v0

    return-object v0
.end method
