.class public final enum Lcom/oculus/library/model/ComfortRating;
.super Ljava/lang/Enum;
.source "ComfortRating.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/ComfortRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/ComfortRating;

.field public static final enum COMFORTABLE_FOR_ALL:Lcom/oculus/library/model/ComfortRating;

.field public static final enum COMFORTABLE_FOR_FEW:Lcom/oculus/library/model/ComfortRating;

.field public static final enum COMFORTABLE_FOR_MOST:Lcom/oculus/library/model/ComfortRating;

.field public static final enum COMFORTABLE_FOR_SOME:Lcom/oculus/library/model/ComfortRating;

.field public static final enum NOT_RATED:Lcom/oculus/library/model/ComfortRating;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/ComfortRating;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    .line 10
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "COMFORTABLE_FOR_ALL"

    invoke-direct {v0, v1, v4, v3}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_ALL:Lcom/oculus/library/model/ComfortRating;

    .line 11
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "COMFORTABLE_FOR_MOST"

    invoke-direct {v0, v1, v5, v4}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_MOST:Lcom/oculus/library/model/ComfortRating;

    .line 12
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "COMFORTABLE_FOR_SOME"

    invoke-direct {v0, v1, v6, v5}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_SOME:Lcom/oculus/library/model/ComfortRating;

    .line 13
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "COMFORTABLE_FOR_FEW"

    invoke-direct {v0, v1, v7, v6}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_FEW:Lcom/oculus/library/model/ComfortRating;

    .line 14
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const-string v1, "NOT_RATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->NOT_RATED:Lcom/oculus/library/model/ComfortRating;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/library/model/ComfortRating;

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_ALL:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_MOST:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_SOME:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_FEW:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/model/ComfortRating;->NOT_RATED:Lcom/oculus/library/model/ComfortRating;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->$VALUES:[Lcom/oculus/library/model/ComfortRating;

    .line 16
    const-class v0, Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/oculus/library/model/ComfortRating;->value:I

    .line 22
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/oculus/library/model/ComfortRating;->values()[Lcom/oculus/library/model/ComfortRating;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 26
    .local v0, "rating":Lcom/oculus/library/model/ComfortRating;
    invoke-virtual {v0}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    .end local v0    # "rating":Lcom/oculus/library/model/ComfortRating;
    :goto_1
    return-object v0

    .line 25
    .restart local v0    # "rating":Lcom/oculus/library/model/ComfortRating;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "rating":Lcom/oculus/library/model/ComfortRating;
    :cond_1
    sget-object v1, Lcom/oculus/library/model/ComfortRating;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse comfort rating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/oculus/library/model/ComfortRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/ComfortRating;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/ComfortRating;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/oculus/library/model/ComfortRating;->$VALUES:[Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v0}, [Lcom/oculus/library/model/ComfortRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/ComfortRating;

    return-object v0
.end method
