.class public final enum Lcom/facebook/mobileconfig/factory/MobileConfigError;
.super Ljava/lang/Enum;
.source "MobileConfigError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/mobileconfig/factory/MobileConfigError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum CONFIG_TABLE_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum CONFIG_TABLE_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum FLATBUFFER_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum FLATBUFFER_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum NO_CONFIG_TABLE_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum NO_FLATBUFFER_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

.field public static final enum OVERRIDES_EXIST:Lcom/facebook/mobileconfig/factory/MobileConfigError;


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
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "NO_FLATBUFFER_SCHEMA_HASH"

    invoke-direct {v0, v1, v3}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->NO_FLATBUFFER_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 7
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "NO_CONFIG_TABLE_SCHEMA_HASH"

    invoke-direct {v0, v1, v4}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->NO_CONFIG_TABLE_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 8
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "FLATBUFFER_SCHEMA_MISMATCH"

    invoke-direct {v0, v1, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->FLATBUFFER_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 9
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "FLATBUFFER_MAGIC_MISMATCH"

    invoke-direct {v0, v1, v6}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->FLATBUFFER_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 10
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "CONFIG_TABLE_SCHEMA_MISMATCH"

    invoke-direct {v0, v1, v7}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 11
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "CONFIG_TABLE_MAGIC_MISMATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 12
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    const-string v1, "OVERRIDES_EXIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->OVERRIDES_EXIST:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/mobileconfig/factory/MobileConfigError;

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->NO_FLATBUFFER_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->NO_CONFIG_TABLE_SCHEMA_HASH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->FLATBUFFER_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->FLATBUFFER_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_SCHEMA_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigError;->CONFIG_TABLE_MAGIC_MISMATCH:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigError;->OVERRIDES_EXIST:Lcom/facebook/mobileconfig/factory/MobileConfigError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->$VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/mobileconfig/factory/MobileConfigError;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;

    return-object v0
.end method

.method public static values()[Lcom/facebook/mobileconfig/factory/MobileConfigError;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigError;->$VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigError;

    invoke-virtual {v0}, [Lcom/facebook/mobileconfig/factory/MobileConfigError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/mobileconfig/factory/MobileConfigError;

    return-object v0
.end method
