.class public final enum Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;
.super Ljava/lang/Enum;
.source "MobileConfigValueSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum DEFAULT__ACCESSED_AFTER_MC_DISPOSE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum DEFAULT__MISSING_SERVER_VALUE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum DEFAULT__NO_DATA_ON_DISK:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum DEFAULT__SERVER_RETURNED_NULL:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum SERVER:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

.field public static final enum UNKNOWN:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;


# instance fields
.field private source:I


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
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->UNKNOWN:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 8
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v5, v4}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->SERVER:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 9
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "OVERRIDE"

    invoke-direct {v0, v1, v6, v5}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 10
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "DEFAULT__SERVER_RETURNED_NULL"

    invoke-direct {v0, v1, v7, v6}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__SERVER_RETURNED_NULL:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 11
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "DEFAULT__ACCESSED_BEFORE_MC_INIT"

    invoke-direct {v0, v1, v8, v7}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 12
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "DEFAULT__NO_DATA_ON_DISK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__NO_DATA_ON_DISK:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 13
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "DEFAULT__ACCESSED_AFTER_MC_DISPOSE"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_AFTER_MC_DISPOSE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 14
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    const-string v1, "DEFAULT__MISSING_SERVER_VALUE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__MISSING_SERVER_VALUE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->UNKNOWN:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->SERVER:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__SERVER_RETURNED_NULL:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_BEFORE_MC_INIT:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__NO_DATA_ON_DISK:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__ACCESSED_AFTER_MC_DISPOSE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->DEFAULT__MISSING_SERVER_VALUE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->$VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->source:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    return-object v0
.end method

.method public static values()[Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->$VALUES:[Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {v0}, [Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    return-object v0
.end method


# virtual methods
.method public getSource()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->source:I

    return v0
.end method
