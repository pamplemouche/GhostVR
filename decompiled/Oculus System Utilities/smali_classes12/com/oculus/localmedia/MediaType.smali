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

.field public static final enum FOLDER:Lcom/oculus/localmedia/MediaType;

.field public static final enum IMAGE:Lcom/oculus/localmedia/MediaType;

.field public static final enum THREEDMODEL:Lcom/oculus/localmedia/MediaType;

.field public static final enum UNKNOWN:Lcom/oculus/localmedia/MediaType;

.field public static final enum VIDEO:Lcom/oculus/localmedia/MediaType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    .line 7
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 8
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    .line 9
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v7, v6}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    .line 10
    new-instance v0, Lcom/oculus/localmedia/MediaType;

    const-string v1, "THREEDMODEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/localmedia/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/localmedia/MediaType;->THREEDMODEL:Lcom/oculus/localmedia/MediaType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/localmedia/MediaType;

    sget-object v1, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/localmedia/MediaType;->THREEDMODEL:Lcom/oculus/localmedia/MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/localmedia/MediaType;->$VALUES:[Lcom/oculus/localmedia/MediaType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/oculus/localmedia/MediaType;->mValue:I

    .line 16
    return-void
.end method

.method public static all()I
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v0

    sget-object v1, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/oculus/localmedia/MediaType;->THREEDMODEL:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static varargs list([Lcom/oculus/localmedia/MediaType;)I
    .locals 5
    .param p0, "types"    # [Lcom/oculus/localmedia/MediaType;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "bitmask":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 37
    .local v1, "type":Lcom/oculus/localmedia/MediaType;
    invoke-virtual {v1}, Lcom/oculus/localmedia/MediaType;->getValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "type":Lcom/oculus/localmedia/MediaType;
    :cond_0
    return v0
.end method

.method public static none()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/oculus/localmedia/MediaType;->VIDEO:Lcom/oculus/localmedia/MediaType;

    .line 52
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/oculus/localmedia/MediaType;->IMAGE:Lcom/oculus/localmedia/MediaType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/oculus/localmedia/MediaType;->FOLDER:Lcom/oculus/localmedia/MediaType;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/oculus/localmedia/MediaType;->THREEDMODEL:Lcom/oculus/localmedia/MediaType;

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    sget-object v0, Lcom/oculus/localmedia/MediaType;->THREEDMODEL:Lcom/oculus/localmedia/MediaType;

    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

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
    .line 19
    iget v0, p0, Lcom/oculus/localmedia/MediaType;->mValue:I

    return v0
.end method

.method public match(I)Z
    .locals 1
    .param p1, "types"    # I

    .prologue
    .line 23
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
