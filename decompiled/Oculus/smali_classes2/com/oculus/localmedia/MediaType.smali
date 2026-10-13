.class public final enum Lcom/oculus/localmedia/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/localmedia/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/localmedia/MediaType;

.field public static final enum IMAGE:Lcom/oculus/localmedia/MediaType;

.field public static final enum PANO:Lcom/oculus/localmedia/MediaType;

.field public static final enum UNKNOWN:Lcom/oculus/localmedia/MediaType;

.field public static final enum VIDEO:Lcom/oculus/localmedia/MediaType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    .line 7
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 8
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    .line 9
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "PANO"

    invoke-direct {v0, v1, v5, v6}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    .line 5
    new-array v0, v6, [Lcom/oculus/localmedia/MediaType;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/localmedia/MediaType;->$VALUES:[Lcom/oculus/localmedia/MediaType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/oculus/localmedia/MediaType;->mValue:I

    .line 15
    return-void
.end method

.method public static all()I
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v0

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/oculus/localmedia/MediaType;->PANO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static varargs list([Lcom/oculus/localmedia/MediaType;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 32
    invoke-virtual {v3}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/localmedia/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/localmedia/MediaType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/localmedia/MediaType;->$VALUES:[Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, [Lcom/oculus/localmedia/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/localmedia/MediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/oculus/localmedia/MediaType;->mValue:I

    return v0
.end method

.method public match(I)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
