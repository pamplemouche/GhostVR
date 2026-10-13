.class public Lcom/oculus/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field public static final ACTIVITY_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell.MainActivity"

.field public static final DEBUG:Z

.field public static final EXOPACKAGE_FLAGS:I

.field public static final IS_EXOPACKAGE:Z

.field public static final PACKAGE_NAME_APP_SAFETY:Ljava/lang/String; = "com.oculus.appsafety"

.field public static final PACKAGE_NAME_ASSISTANT:Ljava/lang/String; = "com.oculus.assistant"

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.oculus.browser"

.field public static final PACKAGE_NAME_BUGREPORTER2:Ljava/lang/String; = "com.oculus.bugreporter"

.field public static final PACKAGE_NAME_HOME:Ljava/lang/String;

.field public static final PACKAGE_NAME_HORIZON:Ljava/lang/String;

.field public static final PACKAGE_NAME_MEDIA_PLAYER:Ljava/lang/String; = "com.oculus.mediaplayer"

.field public static final PACKAGE_NAME_OCMS:Ljava/lang/String; = "com.oculus.ocms"

.field public static final PACKAGE_NAME_OVR_STANDALONE:Ljava/lang/String; = "oculus.hardware.standalone_vr"

.field public static final PACKAGE_NAME_PROLOGUE:Ljava/lang/String; = "com.oculus.prologue"

.field public static final PACKAGE_NAME_SHELL:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final PACKAGE_NAME_SHELL_HOME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final PACKAGE_NAME_SYSTEM_ACTIVITIES:Ljava/lang/String; = "com.oculus.systemactivities"

.field public static final PACKAGE_NAME_SYSTEM_DRIVER:Ljava/lang/String; = "com.oculus.systemdriver"

.field public static final PACKAGE_NAME_UPDATER:Ljava/lang/String; = "com.oculus.updater"

.field public static final PROVIDER_SUFFIX:Ljava/lang/String;

.field public static final STORE_APP_SIGNATURE_ESIG:Ljava/lang/String; = "oculus.software.store_app.signature.esig"

.field public static final STORE_APP_SIGNATURE_OSIG:Ljava/lang/String; = "oculus.software.store_app.signature.osig"

.field public static final UID_NAME_SYSTEM_APPS:Ljava/lang/String; = "android.uid.system:1000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    sget-boolean v0, Lcom/oculus/common/build/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    .line 11
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PACKAGE_NAME_HOME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HOME:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/oculus/common/build/BuildConfig;->IS_EXOPACKAGE:Z

    sput-boolean v0, Lcom/oculus/common/build/BuildConstants;->IS_EXOPACKAGE:Z

    .line 23
    sget v0, Lcom/oculus/common/build/BuildConfig;->EXOPACKAGE_FLAGS:I

    sput v0, Lcom/oculus/common/build/BuildConstants;->EXOPACKAGE_FLAGS:I

    .line 24
    sget-object v0, Lcom/oculus/common/build/BuildConfig;->PROVIDER_SUFFIX:Ljava/lang/String;

    sput-object v0, Lcom/oculus/common/build/BuildConstants;->PROVIDER_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
