.class public final enum Lcom/oculus/library/model/AppMediaCapability;
.super Ljava/lang/Enum;
.source "AppMediaCapability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/AppMediaCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/AppMediaCapability;

.field public static final enum LIVESTREAMING:Lcom/oculus/library/model/AppMediaCapability;

.field public static final enum SCREENRECORDING:Lcom/oculus/library/model/AppMediaCapability;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

.field public static final enum VRCASTING:Lcom/oculus/library/model/AppMediaCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/AppMediaCapability;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/AppMediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    .line 7
    new-instance v0, Lcom/oculus/library/model/AppMediaCapability;

    const-string v1, "LIVESTREAMING"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/model/AppMediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/AppMediaCapability;->LIVESTREAMING:Lcom/oculus/library/model/AppMediaCapability;

    .line 8
    new-instance v0, Lcom/oculus/library/model/AppMediaCapability;

    const-string v1, "VRCASTING"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/model/AppMediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/AppMediaCapability;->VRCASTING:Lcom/oculus/library/model/AppMediaCapability;

    .line 9
    new-instance v0, Lcom/oculus/library/model/AppMediaCapability;

    const-string v1, "SCREENRECORDING"

    invoke-direct {v0, v1, v5}, Lcom/oculus/library/model/AppMediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/AppMediaCapability;->SCREENRECORDING:Lcom/oculus/library/model/AppMediaCapability;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/library/model/AppMediaCapability;

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->LIVESTREAMING:Lcom/oculus/library/model/AppMediaCapability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->VRCASTING:Lcom/oculus/library/model/AppMediaCapability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->SCREENRECORDING:Lcom/oculus/library/model/AppMediaCapability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/library/model/AppMediaCapability;->$VALUES:[Lcom/oculus/library/model/AppMediaCapability;

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

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/AppMediaCapability;
    .locals 5

    .prologue
    .line 12
    invoke-static {}, Lcom/oculus/library/model/AppMediaCapability;->values()[Lcom/oculus/library/model/AppMediaCapability;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 13
    invoke-virtual {v0}, Lcom/oculus/library/model/AppMediaCapability;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    :goto_1
    return-object v0

    .line 12
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppMediaCapability;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/AppMediaCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppMediaCapability;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/AppMediaCapability;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/AppMediaCapability;->$VALUES:[Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v0}, [Lcom/oculus/library/model/AppMediaCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/AppMediaCapability;

    return-object v0
.end method
