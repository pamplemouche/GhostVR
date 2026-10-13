.class public Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;
.super Ljava/lang/Object;
.source "PreloadSdkConstants.java"


# static fields
.field public static final APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

.field public static final APP_MANAGER_PERMISSION:Ljava/lang/String;

.field public static final DEVICE_INFO_PACKAGE_NAME:Ljava/lang/String;

.field public static final DEVICE_OWNER_PACKAGE_NAME:Ljava/lang/String;

.field public static final DEVICE_OWNER_PERMISSION:Ljava/lang/String;

.field public static final FB_APP_COMMUNICATION_PERMISSION:Ljava/lang/String;

.field public static final INSTALLER_PACKAGE_NAME:Ljava/lang/String;

.field public static final INSTALLER_PERMISSION:Ljava/lang/String;

.field public static final PRELOAD_SDK_NEW_SIGNATURE:Landroid/content/pm/Signature;

.field public static final PRELOAD_SDK_NEW_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

.field public static final PRELOAD_SDK_NEW_SIGNATURE_HASH:Ljava/lang/String;

.field public static final PRELOAD_SDK_NEW_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

.field public static final PRELOAD_SDK_OLD_SIGNATURE:Landroid/content/pm/Signature;

.field public static final PRELOAD_SDK_OLD_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

.field public static final PRELOAD_SDK_OLD_SIGNATURE_HASH:Ljava/lang/String;

.field public static final PRELOAD_SDK_OLD_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

.field public static final SERVICES_PACKAGE_NAME:Ljava/lang/String;

.field public static final SERVICES_PERMISSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.appmanager.dev"

    :goto_0
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->APP_MANAGER_PACKAGE_NAME:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.appmanager.dev.ACCESS"

    :goto_1
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->APP_MANAGER_PERMISSION:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.system.dev"

    :goto_2
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->INSTALLER_PACKAGE_NAME:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.facebook.system.dev.ACCESS"

    :goto_3
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->INSTALLER_PERMISSION:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.facebook.deviceowner.dev"

    :goto_4
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->DEVICE_OWNER_PACKAGE_NAME:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.facebook.deviceowner.dev.ACCESS"

    :goto_5
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->DEVICE_OWNER_PERMISSION:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.facebook.services.dev"

    :goto_6
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->SERVICES_PACKAGE_NAME:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.facebook.services.dev.ACCESS"

    :goto_7
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->SERVICES_PERMISSION:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.facebook.deviceinfo.dev.redirect"

    :goto_8
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->DEVICE_INFO_PACKAGE_NAME:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "com.facebook.permission.debug.FB_APP_COMMUNICATION"

    :goto_9
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->FB_APP_COMMUNICATION_PERMISSION:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/facebook/oxygen/sdk/common/TrustedCertificates;->OXYGEN_PRELOADS_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

    .line 168
    sget-object v0, Lcom/facebook/oxygen/sdk/common/TrustedCertificates;->OXYGEN_PRELOADS_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

    .line 173
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

    :goto_a
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE:Landroid/content/pm/Signature;

    .line 185
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "7XE60X540nq3JXIiFpcVSgM8diY"

    :goto_b
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE_HASH:Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/facebook/oxygen/sdk/common/TrustedCertificates;->FACEBOOK_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

    .line 194
    sget-object v0, Lcom/facebook/oxygen/sdk/common/TrustedCertificates;->FACEBOOK_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

    .line 199
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE_DEBUG:Landroid/content/pm/Signature;

    :goto_c
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE:Landroid/content/pm/Signature;

    .line 211
    invoke-static {}, Lcom/facebook/oxygen/sdk/build/SdkBuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Xo8WBi6jzSxKDVR4drqm84yr9iU"

    :goto_d
    sput-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE_HASH:Ljava/lang/String;

    .line 210
    return-void

    .line 31
    :cond_0
    const-string v0, "com.facebook.appmanager"

    goto/16 :goto_0

    .line 41
    :cond_1
    const-string v0, "com.facebook.appmanager.ACCESS"

    goto/16 :goto_1

    .line 63
    :cond_2
    const-string v0, "com.facebook.system"

    goto/16 :goto_2

    .line 73
    :cond_3
    const-string v0, "com.facebook.system.ACCESS"

    goto/16 :goto_3

    .line 92
    :cond_4
    const-string v0, "com.facebook.deviceowner"

    goto :goto_4

    .line 102
    :cond_5
    const-string v0, "com.facebook.deviceowner.ACCESS"

    goto :goto_5

    .line 128
    :cond_6
    const-string v0, "com.facebook.services"

    goto :goto_6

    .line 138
    :cond_7
    const-string v0, "com.facebook.services.ACCESS"

    goto :goto_7

    .line 153
    :cond_8
    const-string v0, "com.facebook.deviceinfo.redirect"

    goto :goto_8

    .line 159
    :cond_9
    const-string v0, "com.facebook.permission.prod.FB_APP_COMMUNICATION"

    goto :goto_9

    .line 173
    :cond_a
    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_NEW_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

    goto :goto_a

    .line 185
    :cond_b
    const-string v0, "e6fv6XFRr-tXEDJmsSANhagF19Y"

    goto :goto_b

    .line 199
    :cond_c
    sget-object v0, Lcom/facebook/oxygen/sdk/common/PreloadSdkConstants;->PRELOAD_SDK_OLD_SIGNATURE_RELEASE:Landroid/content/pm/Signature;

    goto :goto_c

    .line 211
    :cond_d
    const-string v0, "ijxLJi1yGs1JpL-X1SExmchvork"

    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
