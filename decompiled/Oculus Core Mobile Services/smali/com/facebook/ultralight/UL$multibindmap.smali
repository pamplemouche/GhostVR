.class public final Lcom/facebook/ultralight/UL$multibindmap;
.super Ljava/lang/Object;
.source "UL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ultralight/UL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "multibindmap"
.end annotation


# static fields
.field public static final $ul_$xXXjava_util_Set$x3Ccom_facebook_stetho_dumpapp_DumperPlugin$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_appmanager_info_ApkUpdateInfoListener$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_credentials_CredentialsChangedHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LoginHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LogoutHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXcom_oculus_common_init_NeedsHighPriorityInit$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_config_interfaces_Configuration$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_downloader_OculusDownloadListener$x3E$xXXBINDING_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 317
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/16 v1, 0x92

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xac

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0xc3

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0xb1

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    invoke-static {v5}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9b

    invoke-static {v2}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x90

    invoke-static {v2}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb2

    invoke-static {v2}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXBINDING_ID:[I

    .line 318
    new-array v0, v5, [I

    const/16 v1, 0xd7

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x93

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LogoutHandler$x3E$xXXBINDING_ID:[I

    .line 319
    new-array v0, v3, [I

    const/16 v1, 0xad

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_downloader_OculusDownloadListener$x3E$xXXBINDING_ID:[I

    .line 320
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0x96

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x4b

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v5

    const/16 v1, 0x8d

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x9f

    invoke-static {v2}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_facebook_stetho_dumpapp_DumperPlugin$x3E$xXXBINDING_ID:[I

    .line 321
    new-array v0, v5, [I

    const/16 v1, 0xd7

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LoginHandler$x3E$xXXBINDING_ID:[I

    .line 322
    new-array v0, v4, [I

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_credentials_CredentialsChangedHandler$x3E$xXXBINDING_ID:[I

    .line 323
    new-array v0, v7, [I

    const/16 v1, 0x3e

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0x44

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v3}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_appmanager_info_ApkUpdateInfoListener$x3E$xXXBINDING_ID:[I

    .line 324
    new-array v0, v3, [I

    const/16 v1, 0xb8

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_config_interfaces_Configuration$x3E$xXXBINDING_ID:[I

    .line 325
    new-array v0, v5, [I

    const/16 v1, 0xb7

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v4

    const/16 v1, 0xcd

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v3

    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXcom_oculus_common_init_NeedsHighPriorityInit$xXXBINDING_ID:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
