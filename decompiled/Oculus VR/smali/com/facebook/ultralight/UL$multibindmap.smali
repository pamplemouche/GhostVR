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

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_credentials_CredentialsChangedHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LoginHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LogoutHandler$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXcom_oculus_common_init_NeedsHighPriorityInit$xXXBINDING_ID:[I

.field public static final $ul_$xXXjava_util_Set$x3Cjava_lang_String$x3E$xXXcom_oculus_config_annotations_GatekeeperSet$xXXBINDING_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    new-array v0, v3, [I

    const/16 v1, 0x43

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXBINDING_ID:[I

    .line 183
    new-array v0, v3, [I

    invoke-static {v4}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LogoutHandler$x3E$xXXBINDING_ID:[I

    .line 184
    new-array v0, v3, [I

    const/16 v1, 0x2e

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_facebook_stetho_dumpapp_DumperPlugin$x3E$xXXBINDING_ID:[I

    .line 185
    new-array v0, v3, [I

    invoke-static {v4}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_handler_LoginHandler$x3E$xXXBINDING_ID:[I

    .line 186
    new-array v0, v3, [I

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/facebook/ultralight/UL$id;->id(I)I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_auth_credentials_CredentialsChangedHandler$x3E$xXXBINDING_ID:[I

    .line 187
    new-array v0, v2, [I

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Cjava_lang_String$x3E$xXXcom_oculus_config_annotations_GatekeeperSet$xXXBINDING_ID:[I

    .line 188
    new-array v0, v2, [I

    sput-object v0, Lcom/facebook/ultralight/UL$multibindmap;->$ul_$xXXjava_util_Set$x3Ccom_oculus_common_init_INeedInit$x3E$xXXcom_oculus_common_init_NeedsHighPriorityInit$xXXBINDING_ID:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
