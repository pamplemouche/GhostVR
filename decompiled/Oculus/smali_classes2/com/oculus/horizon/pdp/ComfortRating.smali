.class public final enum Lcom/oculus/horizon/pdp/ComfortRating;
.super Ljava/lang/Enum;
.source "ComfortRating.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/pdp/ComfortRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/pdp/ComfortRating;

.field public static final enum FEW:Lcom/oculus/horizon/pdp/ComfortRating;

.field public static final enum MOST:Lcom/oculus/horizon/pdp/ComfortRating;

.field public static final enum SOME:Lcom/oculus/horizon/pdp/ComfortRating;

.field public static final enum UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;


# instance fields
.field private iconResourceId:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/pdp/ComfortRating;

    const-string v1, "FEW"

    const-string v2, "COMFORTABLE_FOR_FEW"

    sget v3, Lcom/oculus/horizon/R$drawable;->pdp_comfort_few_icon:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oculus/horizon/pdp/ComfortRating;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    .line 10
    new-instance v0, Lcom/oculus/horizon/pdp/ComfortRating;

    const-string v1, "SOME"

    const-string v2, "COMFORTABLE_FOR_SOME"

    sget v3, Lcom/oculus/horizon/R$drawable;->pdp_comfort_some_icon:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oculus/horizon/pdp/ComfortRating;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    .line 11
    new-instance v0, Lcom/oculus/horizon/pdp/ComfortRating;

    const-string v1, "MOST"

    const-string v2, "COMFORTABLE_FOR_MOST"

    sget v3, Lcom/oculus/horizon/R$drawable;->pdp_comfort_most_icon:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/oculus/horizon/pdp/ComfortRating;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    .line 12
    new-instance v0, Lcom/oculus/horizon/pdp/ComfortRating;

    const-string v1, "UNRATED"

    const-string v2, "NOT_RATED"

    sget v3, Lcom/oculus/horizon/R$drawable;->pdp_comfort_unrated_icon:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/oculus/horizon/pdp/ComfortRating;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/pdp/ComfortRating;

    sget-object v1, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->$VALUES:[Lcom/oculus/horizon/pdp/ComfortRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/oculus/horizon/pdp/ComfortRating;->value:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/oculus/horizon/pdp/ComfortRating;->iconResourceId:I

    .line 20
    return-void
.end method

.method public static getComfortRatingForValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ComfortRating;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    .line 54
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    goto :goto_0

    .line 53
    :cond_2
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid comfort rating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getComfortRatingIconResourceId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->MOST:Lcom/oculus/horizon/pdp/ComfortRating;

    iget v0, v0, Lcom/oculus/horizon/pdp/ComfortRating;->iconResourceId:I

    .line 40
    :goto_0
    return v0

    .line 31
    :cond_0
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->SOME:Lcom/oculus/horizon/pdp/ComfortRating;

    iget v0, v0, Lcom/oculus/horizon/pdp/ComfortRating;->iconResourceId:I

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->FEW:Lcom/oculus/horizon/pdp/ComfortRating;

    iget v0, v0, Lcom/oculus/horizon/pdp/ComfortRating;->iconResourceId:I

    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->UNRATED:Lcom/oculus/horizon/pdp/ComfortRating;

    iget v0, v0, Lcom/oculus/horizon/pdp/ComfortRating;->iconResourceId:I

    goto :goto_0

    .line 40
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ComfortRating;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/ComfortRating;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/pdp/ComfortRating;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/pdp/ComfortRating;->$VALUES:[Lcom/oculus/horizon/pdp/ComfortRating;

    invoke-virtual {v0}, [Lcom/oculus/horizon/pdp/ComfortRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/pdp/ComfortRating;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ComfortRating;->value:Ljava/lang/String;

    return-object v0
.end method
