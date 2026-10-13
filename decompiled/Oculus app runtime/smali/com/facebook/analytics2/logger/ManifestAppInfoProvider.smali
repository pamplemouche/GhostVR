.class public Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;
.super Ljava/lang/Object;
.source "ManifestAppInfoProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/AppInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManifestAppInfoProvider"


# instance fields
.field private mAppVersion:Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExplicitFacebookAppId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mExplicitFacebookAppId:Ljava/lang/String;

    return-void
.end method

.method public static fromApplicationTag(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;

    invoke-direct {v0, p0, p1}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "facebookAppId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAppVersionHolder()Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;
    .locals 1
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mAppVersion:Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->readAppVersion(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mAppVersion:Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mAppVersion:Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    return-object v0
.end method

.method private static readAppVersion(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;
    .locals 4
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;-><init>(Ljava/lang/String;ILcom/facebook/analytics2/logger/ManifestAppInfoProvider$1;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing own package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->mExplicitFacebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->getAppVersionHolder()Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;->getAppVersionHolder()Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;

    move-result-object v0

    iget v0, v0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;->versionCode:I

    return v0
.end method
