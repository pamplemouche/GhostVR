.class public final enum Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
.super Ljava/lang/Enum;
.source "MarketingEmailOptInStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field public static final enum OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field public static final enum OPTED_OUT:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

.field public static final enum UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    const-string v1, "OPTED_IN"

    const-string v2, "OPTED_IN"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 7
    new-instance v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    const-string v1, "OPTED_OUT"

    const-string v2, "OPTED_OUT"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_OUT:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 8
    new-instance v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    sget-object v1, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_IN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->OPTED_OUT:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->UNKNOWN:Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->$VALUES:[Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

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
    iput-object p3, p0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->mText:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->$VALUES:[Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    invoke-virtual {v0}, [Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/nux360/MarketingEmailOptInStatus;->mText:Ljava/lang/String;

    return-object v0
.end method
