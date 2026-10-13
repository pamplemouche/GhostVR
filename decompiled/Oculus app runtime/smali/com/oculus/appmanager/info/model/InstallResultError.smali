.class public final enum Lcom/oculus/appmanager/info/model/InstallResultError;
.super Ljava/lang/Enum;
.source "InstallResultError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/appmanager/info/model/InstallResultError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final INVALID_VALUE:I

.field public static final enum IO_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallResultError;

.field public static final enum VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v1, 0x1

    const-string v2, "UNKNOWN_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 11
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v2, 0x2

    const-string v3, "LOW_STORAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 12
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v3, 0x3

    const-string v4, "NO_ENTITLEMENT"

    invoke-direct {v0, v4, v2, v3}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v4, 0x4

    const-string v5, "NETWORK_ERROR"

    invoke-direct {v0, v5, v3, v4}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 14
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v5, 0x5

    const-string v6, "SERVER_RESPONSE_ERROR"

    invoke-direct {v0, v6, v4, v5}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 15
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v6, 0x6

    const-string v7, "INSTALLER_DISABLED"

    invoke-direct {v0, v7, v5, v6}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v7, 0x7

    const-string v8, "NO_STORAGE_PERMISSION"

    invoke-direct {v0, v8, v6, v7}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 17
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v8, 0x8

    const-string v9, "DUPLICATE_REQUEST"

    invoke-direct {v0, v9, v7, v8}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 18
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v9, 0x9

    const-string v10, "INSTALLER_ERROR"

    invoke-direct {v0, v10, v8, v9}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 19
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v10, 0xa

    const-string v11, "USER_CANCELLED"

    invoke-direct {v0, v11, v9, v10}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 20
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v11, 0xb

    const-string v12, "NOT_LOGGED_IN"

    invoke-direct {v0, v12, v10, v11}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 21
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v12, 0xc

    const-string v13, "INVALID_INSTALL_REQUEST"

    invoke-direct {v0, v13, v11, v12}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 22
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v13, 0xd

    const-string v14, "IO_ERROR"

    invoke-direct {v0, v14, v12, v13}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->IO_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 23
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v14, 0xe

    const-string v15, "UNEXPECTED_CHANGE"

    invoke-direct {v0, v15, v13, v14}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 24
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v15, 0xf

    const-string v13, "VERIFICATION_FAILURE"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const-string v13, "INTERNAL_EXCEPTION"

    const/16 v14, 0x10

    invoke-direct {v0, v13, v15, v14}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 26
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const-string v13, "CONSISTENCY_FAILURE"

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 27
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const-string v13, "DOWNLOADER_DISABLED"

    const/16 v14, 0x11

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    .line 28
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    const-string v13, "SHIBA_ATTACK_PREVENTION"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/appmanager/info/model/InstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v0, 0x13

    .line 5
    new-array v0, v0, [Lcom/oculus/appmanager/info/model/InstallResultError;

    sget-object v13, Lcom/oculus/appmanager/info/model/InstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    sget-object v13, Lcom/oculus/appmanager/info/model/InstallResultError;->LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v13, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->NETWORK_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->SERVER_RESPONSE_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->INSTALLER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->NO_STORAGE_PERMISSION:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->DUPLICATE_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->INSTALLER_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->USER_CANCELLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->INVALID_INSTALL_REQUEST:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->IO_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->UNEXPECTED_CHANGE:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->VERIFICATION_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->INTERNAL_EXCEPTION:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->CONSISTENCY_FAILURE:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->DOWNLOADER_DISABLED:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallResultError;->SHIBA_ATTACK_PREVENTION:Lcom/oculus/appmanager/info/model/InstallResultError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/InstallResultError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/oculus/appmanager/info/model/InstallResultError;->code:I

    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/model/InstallResultError;
    .locals 5

    .line 39
    invoke-static {}, Lcom/oculus/appmanager/info/model/InstallResultError;->values()[Lcom/oculus/appmanager/info/model/InstallResultError;

    move-result-object v0

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    iget v4, v3, Lcom/oculus/appmanager/info/model/InstallResultError;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-object p0, Lcom/oculus/appmanager/info/model/InstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallResultError;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/InstallResultError;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/appmanager/info/model/InstallResultError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/model/InstallResultError;

    return-object p0
.end method

.method public static values()[Lcom/oculus/appmanager/info/model/InstallResultError;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/InstallResultError;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/model/InstallResultError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/model/InstallResultError;

    return-object v0
.end method
