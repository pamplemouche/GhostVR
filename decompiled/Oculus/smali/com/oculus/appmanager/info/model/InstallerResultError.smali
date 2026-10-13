.class public final enum Lcom/oculus/appmanager/info/model/InstallerResultError;
.super Ljava/lang/Enum;
.source "InstallerResultError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/info/model/InstallerResultError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INSTALLED_APP_NO_SIGNATURES:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INSTALLED_APP_SIGNATURE_MISMATCH:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final INVALID_VALUE:I

.field public static final enum IO_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NOT_INSTALLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NO_NEW_BINARIES_AVAILABLE:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum UNINSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

.field public static final enum VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 12
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "LOW_STORAGE"

    invoke-direct {v0, v1, v4, v5}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NO_ENTITLEMENT"

    invoke-direct {v0, v1, v5, v6}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 14
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6, v7}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 15
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "SERVER_RESPONSE_ERROR"

    invoke-direct {v0, v1, v7, v8}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INSTALLER_DISABLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 17
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NO_STORAGE_PERMISSION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 18
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "DUPLICATE_REQUEST"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 19
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INSTALLER_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 20
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "USER_CANCELLED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 21
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 22
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INVALID_INSTALL_REQUEST"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 23
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "IO_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->IO_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 24
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "UNEXPECTED_CHANGE"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "VERIFICATION_FAILURE"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 26
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INTERNAL_EXCEPTION"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 27
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "CONSISTENCY_FAILURE"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 28
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "DOWNLOADER_DISABLED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 29
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "SHIBA_ATTACK_PREVENTION"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 30
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INSTALLED_APP_SIGNATURE_MISMATCH"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLED_APP_SIGNATURE_MISMATCH:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 31
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "INSTALLED_APP_NO_SIGNATURES"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLED_APP_NO_SIGNATURES:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 32
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NO_NEW_BINARIES_AVAILABLE"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_NEW_BINARIES_AVAILABLE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 34
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NOT_MANAGED_BY_OCULUS"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 35
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "NOT_INSTALLED"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 36
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    const-string v1, "UNINSTALLER_ERROR"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/info/model/InstallerResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNINSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 5
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/oculus/appmanager/info/model/InstallerResultError;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->IO_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLED_APP_SIGNATURE_MISMATCH:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->INSTALLED_APP_NO_SIGNATURES:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_NEW_BINARIES_AVAILABLE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNINSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/InstallerResultError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/oculus/appmanager/info/model/InstallerResultError;->code:I

    .line 44
    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/model/InstallerResultError;
    .locals 5

    .prologue
    .line 47
    invoke-static {}, Lcom/oculus/appmanager/info/model/InstallerResultError;->values()[Lcom/oculus/appmanager/info/model/InstallerResultError;

    move-result-object v2

    .line 48
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 49
    iget v4, v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->code:I

    if-ne v4, p0, :cond_0

    .line 53
    :goto_1
    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/InstallerResultError;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/model/InstallerResultError;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/info/model/InstallerResultError;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/InstallerResultError;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/model/InstallerResultError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/model/InstallerResultError;

    return-object v0
.end method
