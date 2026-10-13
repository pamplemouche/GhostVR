.class public final enum Lcom/oculus/appmanager/constants/OxygenInstallerCodes;
.super Ljava/lang/Enum;
.source "OxygenInstallerCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/constants/OxygenInstallerCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum APK_FILE_IS_WRITABLE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum ILLEGAL_ARGUMENT_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum INVALID_CODE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum PERMISSION_NOT_GRANTED:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum UNEXPECTED_EXCEPTION_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

.field public static final enum UNTRUSTED_APK_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "INVALID_CODE"

    const/16 v2, -0x2711

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->INVALID_CODE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 8
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "PERMISSION_NOT_GRANTED"

    const/16 v2, -0x2712

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->PERMISSION_NOT_GRANTED:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 9
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "UNEXPECTED_EXCEPTION_ERROR"

    const/16 v2, -0x2713

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->UNEXPECTED_EXCEPTION_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 10
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "ILLEGAL_ARGUMENT_ERROR"

    const/16 v2, -0x2714

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->ILLEGAL_ARGUMENT_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 11
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "APK_FILE_IS_WRITABLE"

    const/16 v2, -0x2715

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->APK_FILE_IS_WRITABLE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 12
    new-instance v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    const-string v1, "UNTRUSTED_APK_ERROR"

    const/4 v2, 0x5

    const/16 v3, -0x2716

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->UNTRUSTED_APK_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    sget-object v1, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->INVALID_CODE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->PERMISSION_NOT_GRANTED:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->UNEXPECTED_EXCEPTION_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->ILLEGAL_ARGUMENT_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->APK_FILE_IS_WRITABLE:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->UNTRUSTED_APK_ERROR:Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->code:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/constants/OxygenInstallerCodes;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/constants/OxygenInstallerCodes;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/constants/OxygenInstallerCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/constants/OxygenInstallerCodes;

    return-object v0
.end method
