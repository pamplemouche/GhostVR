.class public Lcom/facebook/oxygen/sdk/app/appmanager/apilevel/AppManagerApiLevels;
.super Ljava/lang/Object;
.source "AppManagerApiLevels.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLevel(Landroid/content/pm/PackageInfo;)I
    .locals 3

    .prologue
    .line 122
    const/4 v0, -0x1

    .line 125
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0x135b5e5

    if-lt v1, v2, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    .line 138
    :cond_1
    :goto_0
    return v0

    .line 133
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 134
    if-eqz v1, :cond_1

    .line 138
    const-string v2, "com.facebook.appmanager.api.level"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
