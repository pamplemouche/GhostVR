.class public final enum Lcom/facebook/mobileconfig/UniverseType;
.super Ljava/lang/Enum;
.source "UniverseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/mobileconfig/UniverseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum Anna:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum ExpressWiFi:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum Facebook:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum Flash:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum FlashAldrin:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum Oculus:Lcom/facebook/mobileconfig/UniverseType;

.field public static final enum Onavo:Lcom/facebook/mobileconfig/UniverseType;


# instance fields
.field private value:I


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
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->Facebook:Lcom/facebook/mobileconfig/UniverseType;

    .line 8
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "Oculus"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->Oculus:Lcom/facebook/mobileconfig/UniverseType;

    .line 9
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "Flash"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->Flash:Lcom/facebook/mobileconfig/UniverseType;

    .line 12
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "FlashAldrin"

    invoke-direct {v0, v1, v7, v7}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->FlashAldrin:Lcom/facebook/mobileconfig/UniverseType;

    .line 13
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "Onavo"

    invoke-direct {v0, v1, v8, v8}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->Onavo:Lcom/facebook/mobileconfig/UniverseType;

    .line 14
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "ExpressWiFi"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->ExpressWiFi:Lcom/facebook/mobileconfig/UniverseType;

    .line 15
    new-instance v0, Lcom/facebook/mobileconfig/UniverseType;

    const-string v1, "Anna"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/mobileconfig/UniverseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->Anna:Lcom/facebook/mobileconfig/UniverseType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/mobileconfig/UniverseType;

    sget-object v1, Lcom/facebook/mobileconfig/UniverseType;->Facebook:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/mobileconfig/UniverseType;->Oculus:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/mobileconfig/UniverseType;->Flash:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/mobileconfig/UniverseType;->FlashAldrin:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/mobileconfig/UniverseType;->Onavo:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/mobileconfig/UniverseType;->ExpressWiFi:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/mobileconfig/UniverseType;->Anna:Lcom/facebook/mobileconfig/UniverseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/mobileconfig/UniverseType;->$VALUES:[Lcom/facebook/mobileconfig/UniverseType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/facebook/mobileconfig/UniverseType;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/mobileconfig/UniverseType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/mobileconfig/UniverseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/mobileconfig/UniverseType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/mobileconfig/UniverseType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/mobileconfig/UniverseType;->$VALUES:[Lcom/facebook/mobileconfig/UniverseType;

    invoke-virtual {v0}, [Lcom/facebook/mobileconfig/UniverseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/mobileconfig/UniverseType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/facebook/mobileconfig/UniverseType;->value:I

    return v0
.end method
