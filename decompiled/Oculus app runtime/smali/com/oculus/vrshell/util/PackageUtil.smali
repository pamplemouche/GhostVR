.class public final Lcom/oculus/vrshell/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;
    }
.end annotation


# static fields
.field public static final INTENT_ACTION_PANEL:Ljava/lang/String; = "com.oculus.vrshell.SHELL_MAIN"

.field private static final METADATA_VR_MODE_DUAL:Ljava/lang/String; = "dual"

.field private static final METADATA_VR_MODE_KEY:Ljava/lang/String; = "com.samsung.android.vr.application.mode"

.field private static final METADATA_VR_MODE_VR_ONLY:Ljava/lang/String; = "vr_only"

.field public static final PACKAGE_NAME_360_PHOTOS:Ljava/lang/String; = "com.oculus.oculus360photos"

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.oculus.browser"

.field public static final PACKAGE_NAME_CINEMA:Ljava/lang/String; = "com.oculus.cinema"

.field public static final PACKAGE_NAME_HOME:Ljava/lang/String; = "com.oculus.home"

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String; = "com.oculus.horizon"

.field public static final PACKAGE_NAME_MEDIA_GALLERY:Ljava/lang/String; = "com.oculus.mediagallery"

.field public static final PACKAGE_NAME_MEDIA_PLAYER:Ljava/lang/String; = "com.oculus.mediaplayer"

.field public static final PACKAGE_NAME_SAMSUNG_INPUT_SERVICE:Ljava/lang/String; = "com.samsung.android.app.vr.input.service"

.field public static final PACKAGE_NAME_SAMSUNG_VR_SERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field public static final PACKAGE_NAME_SAMSUNG_VR_SYSTEM:Ljava/lang/String; = "com.samsung.android.hmt.vrsystem"

.field public static final PACKAGE_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final PACKAGE_NAME_SHELL_HOME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final PACKAGE_NAME_SYSTEM_ACTIVITIES:Ljava/lang/String; = "com.oculus.systemactivities"

.field public static final PACKAGE_NAME_SYSTEM_DRIVER:Ljava/lang/String; = "com.oculus.systemdriver"

.field public static final PACKAGE_NAME_SYSTEM_UTILITIES:Ljava/lang/String; = "com.oculus.systemutilities"

.field public static final PACKAGE_NAME_SYSTEM_UX:Ljava/lang/String; = "com.oculus.systemux"

.field public static final PACKAGE_NAME_TV:Ljava/lang/String; = "com.oculus.tv"

.field public static final PACKAGE_NAME_VENUES:Ljava/lang/String; = "com.oculus.venues"

.field private static TAG:Ljava/lang/String;

.field public static final VERSION_DEFAULT:Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const-class v0, Lcom/oculus/vrshell/util/PackageUtil;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/util/PackageUtil;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;

    const/4 v1, 0x0

    const-string v2, "0.0.0"

    invoke-direct {v0, v1, v2}, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/vrshell/util/PackageUtil;->VERSION_DEFAULT:Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;
    .locals 2

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 73
    new-instance v0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    sget-object p0, Lcom/oculus/vrshell/util/PackageUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object p0, Lcom/oculus/vrshell/util/PackageUtil;->VERSION_DEFAULT:Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;

    return-object p0
.end method

.method public static isCaptureV2Compatible(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "Failed to load vrshell metadata: "

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.oculus.systemdriver"

    .line 122
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 123
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "com.oculus.systemdriver.screencapture.capability"

    .line 126
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 129
    sget-object v4, Lcom/oculus/vrshell/util/PackageUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .line 135
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v4, "com.oculus.horizon"

    .line 136
    invoke-virtual {p0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 137
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v1, "com.oculus.horizon.screencapture.capability"

    .line 139
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 142
    sget-object v1, Lcom/oculus/vrshell/util/PackageUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    .line 145
    :goto_1
    sget-object v0, Lcom/oculus/vrshell/util/PackageUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vrDriverMetaData:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " horizonMetaData:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-lt v3, v0, :cond_2

    const/4 v0, 0x3

    if-lt p0, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isVrApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 151
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.vr.application.mode"

    .line 155
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "vr_only"

    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dual"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static matchesMinVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .line 83
    invoke-static {p0, p1}, Lcom/oculus/vrshell/util/PackageUtil;->getAppVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;

    move-result-object p0

    iget-object p0, p0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;->versionName:Ljava/lang/String;

    const-string p1, "\\."

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge p2, v1, :cond_2

    array-length v1, p1

    if-ge p2, v1, :cond_2

    .line 89
    aget-object v1, p0, p2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 90
    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    if-gez v1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    array-length p0, p0

    :goto_1
    array-length p2, p1

    if-ge p0, p2, :cond_4

    .line 101
    aget-object p2, p1, p0

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static queryPanelServices(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell.SHELL_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x40

    .line 169
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
