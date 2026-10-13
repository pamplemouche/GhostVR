.class public Lcom/oculus/vrapi/GearVRProviderHelper;
.super Ljava/lang/Object;
.source "GearVRProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/GearVRProviderHelper$Public;,
        Lcom/oculus/vrapi/GearVRProviderHelper$Global;
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "content://"

.field public static final VR_AUTHORITY:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.vr"

.field public static final VR_PROVIDER_CLASSNAME:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.provider.VRProvider"

.field public static final VR_PROVIDER_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckProviderExists(Landroid/content/Context;)Z
    .locals 3

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.hmt.vrsvc"

    const-string v2, "com.samsung.android.hmt.vrsvc.provider.VRProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    .line 40
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v0, "com.samsung.android.hmt.vrsvc.vr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VrProviderHelper"

    const-string v0, "Found provider."

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const-string p0, "VRProviderHelper"

    const-string v0, "Could not find provider"

    .line 51
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
