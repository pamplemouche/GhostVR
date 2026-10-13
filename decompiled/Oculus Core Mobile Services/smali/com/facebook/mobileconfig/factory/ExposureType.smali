.class public final enum Lcom/facebook/mobileconfig/factory/ExposureType;
.super Ljava/lang/Enum;
.source "ExposureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/mobileconfig/factory/ExposureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/mobileconfig/factory/ExposureType;

.field public static final enum AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

.field public static final enum MANUAL_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureType;

    const-string v1, "AUTO_EXPOSURE"

    const-string v2, "auto"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/mobileconfig/factory/ExposureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    .line 8
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureType;

    const-string v1, "MANUAL_EXPOSURE"

    const-string v2, "man"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/mobileconfig/factory/ExposureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->MANUAL_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/mobileconfig/factory/ExposureType;

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureType;->MANUAL_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->$VALUES:[Lcom/facebook/mobileconfig/factory/ExposureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/facebook/mobileconfig/factory/ExposureType;->mValue:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/mobileconfig/factory/ExposureType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/factory/ExposureType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/mobileconfig/factory/ExposureType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->$VALUES:[Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {v0}, [Lcom/facebook/mobileconfig/factory/ExposureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/mobileconfig/factory/ExposureType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/ExposureType;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/ExposureType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
