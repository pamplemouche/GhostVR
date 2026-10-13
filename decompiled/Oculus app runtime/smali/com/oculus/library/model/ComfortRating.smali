.class public final enum Lcom/oculus/library/model/ComfortRating;
.super Ljava/lang/Enum;
.source "ComfortRating.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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

    .line 8
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    .line 10
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v2, 0x1

    const-string v3, "COMFORTABLE_FOR_ALL"

    invoke-direct {v0, v3, v2, v1}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_ALL:Lcom/oculus/library/model/ComfortRating;

    .line 11
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v3, 0x2

    const-string v4, "COMFORTABLE_FOR_MOST"

    invoke-direct {v0, v4, v3, v2}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_MOST:Lcom/oculus/library/model/ComfortRating;

    .line 12
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v4, 0x3

    const-string v5, "COMFORTABLE_FOR_SOME"

    invoke-direct {v0, v5, v4, v3}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_SOME:Lcom/oculus/library/model/ComfortRating;

    .line 13
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v5, 0x4

    const-string v6, "COMFORTABLE_FOR_FEW"

    invoke-direct {v0, v6, v5, v4}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_FEW:Lcom/oculus/library/model/ComfortRating;

    .line 14
    new-instance v0, Lcom/oculus/library/model/ComfortRating;

    const/4 v6, 0x5

    const-string v7, "NOT_RATED"

    invoke-direct {v0, v7, v6, v5}, Lcom/oculus/library/model/ComfortRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/ComfortRating;->NOT_RATED:Lcom/oculus/library/model/ComfortRating;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lcom/oculus/library/model/ComfortRating;

    sget-object v7, Lcom/oculus/library/model/ComfortRating;->UNKNOWN:Lcom/oculus/library/model/ComfortRating;

    aput-object v7, v0, v1

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_ALL:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_MOST:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_SOME:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->COMFORTABLE_FOR_FEW:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/ComfortRating;->NOT_RATED:Lcom/oculus/library/model/ComfortRating;

    aput-object v1, v0, v6

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/oculus/library/model/ComfortRating;->value:I

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;
    .locals 5

    .line 25
    invoke-static {}, Lcom/oculus/library/model/ComfortRating;->values()[Lcom/oculus/library/model/ComfortRating;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/oculus/library/model/ComfortRating;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse comfort rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;
    .locals 1

    .line 7
    const-class v0, Lcom/oculus/library/model/ComfortRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/library/model/ComfortRating;

    return-object p0
.end method

.method public static values()[Lcom/oculus/library/model/ComfortRating;
    .locals 1

    .line 7
    sget-object v0, Lcom/oculus/library/model/ComfortRating;->$VALUES:[Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v0}, [Lcom/oculus/library/model/ComfortRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/ComfortRating;

    return-object v0
.end method
