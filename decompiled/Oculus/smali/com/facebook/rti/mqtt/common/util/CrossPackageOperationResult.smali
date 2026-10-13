.class public final enum Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
.super Ljava/lang/Enum;
.source "CrossPackageOperationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum BROADCAST_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum BROADCAST_SENT:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum DATA_EXPIRED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum NOTIF_ACKED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum NOTIF_DUPED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_DISABLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_INCOMPATIBLE:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_NOT_INSTALLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_NOT_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

.field public static final enum PROCESSOR_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "DATA_INVALID"

    invoke-direct {v0, v1, v3}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 7
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "DATA_EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_EXPIRED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 8
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "NOTIF_ACKED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_ACKED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 9
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "NOTIF_DUPED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_DUPED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 10
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "BROADCAST_SENT"

    invoke-direct {v0, v1, v7}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_SENT:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 11
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "BROADCAST_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 12
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 13
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_INVALID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 14
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_UNSUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 15
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_INCOMPATIBLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INCOMPATIBLE:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 16
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_NOT_INSTALLED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_INSTALLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 17
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_DISABLED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_DISABLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 18
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_NOT_TRUSTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 19
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PACKAGE_TRUSTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 20
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    const-string v1, "PROCESSOR_FAILED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PROCESSOR_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 5
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    sget-object v1, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_EXPIRED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_ACKED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_DUPED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_SENT:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INCOMPATIBLE:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_INSTALLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_DISABLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PROCESSOR_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->$VALUES:[Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    return-object v0
.end method

.method public static values()[Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->$VALUES:[Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    invoke-virtual {v0}, [Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    return-object v0
.end method


# virtual methods
.method public isPermanentFailure()Z
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->DATA_EXPIRED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INCOMPATIBLE:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_INSTALLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_DISABLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_ACKED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->NOTIF_DUPED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_SENT:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
