.class public final enum Lcom/oculus/library/model/Category;
.super Ljava/lang/Enum;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/Category;

.field public static final enum APPS:Lcom/oculus/library/model/Category;

.field public static final enum CONCEPTS:Lcom/oculus/library/model/Category;

.field public static final enum EARLY_ACCESS:Lcom/oculus/library/model/Category;

.field public static final enum ENTERTAINMENT:Lcom/oculus/library/model/Category;

.field public static final enum ENVIRONMENTS:Lcom/oculus/library/model/Category;

.field public static final enum GALLERY:Lcom/oculus/library/model/Category;

.field public static final enum GAMES:Lcom/oculus/library/model/Category;

.field public static final enum INTERNAL:Lcom/oculus/library/model/Category;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/Category;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 7
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v5, v4}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->APPS:Lcom/oculus/library/model/Category;

    .line 8
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "CONCEPTS"

    invoke-direct {v0, v1, v6, v5}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->CONCEPTS:Lcom/oculus/library/model/Category;

    .line 9
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "EARLY_ACCESS"

    invoke-direct {v0, v1, v7, v6}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->EARLY_ACCESS:Lcom/oculus/library/model/Category;

    .line 10
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "ENTERTAINMENT"

    invoke-direct {v0, v1, v8, v7}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->ENTERTAINMENT:Lcom/oculus/library/model/Category;

    .line 11
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "ENVIRONMENTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->ENVIRONMENTS:Lcom/oculus/library/model/Category;

    .line 12
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "GALLERY"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->GALLERY:Lcom/oculus/library/model/Category;

    .line 13
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "GAMES"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->GAMES:Lcom/oculus/library/model/Category;

    .line 14
    new-instance v0, Lcom/oculus/library/model/Category;

    const-string v1, "INTERNAL"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/model/Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/library/model/Category;->INTERNAL:Lcom/oculus/library/model/Category;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oculus/library/model/Category;

    sget-object v1, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/Category;->APPS:Lcom/oculus/library/model/Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/Category;->CONCEPTS:Lcom/oculus/library/model/Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/library/model/Category;->EARLY_ACCESS:Lcom/oculus/library/model/Category;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/library/model/Category;->ENTERTAINMENT:Lcom/oculus/library/model/Category;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/model/Category;->ENVIRONMENTS:Lcom/oculus/library/model/Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/model/Category;->GALLERY:Lcom/oculus/library/model/Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/model/Category;->GAMES:Lcom/oculus/library/model/Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/library/model/Category;->INTERNAL:Lcom/oculus/library/model/Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/model/Category;->$VALUES:[Lcom/oculus/library/model/Category;

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
    iput p3, p0, Lcom/oculus/library/model/Category;->value:I

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;
    .locals 5

    .prologue
    .line 23
    invoke-static {}, Lcom/oculus/library/model/Category;->values()[Lcom/oculus/library/model/Category;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 24
    invoke-virtual {v0}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 23
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/Category;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Category;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/Category;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/Category;->$VALUES:[Lcom/oculus/library/model/Category;

    invoke-virtual {v0}, [Lcom/oculus/library/model/Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/Category;

    return-object v0
.end method
