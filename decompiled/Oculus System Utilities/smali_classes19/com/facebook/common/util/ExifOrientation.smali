.class public final enum Lcom/facebook/common/util/ExifOrientation;
.super Ljava/lang/Enum;
.source "ExifOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/util/ExifOrientation;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/util/ExifOrientation;

.field public static final enum FLIP_HORIZONTAL:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum FLIP_VERTICAL:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum NORMAL:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum ROTATE_180:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum ROTATE_270:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum ROTATE_90:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum TRANSPOSE:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum TRANSVERSE:Lcom/facebook/common/util/ExifOrientation;

.field public static final enum UNDEFINED:Lcom/facebook/common/util/ExifOrientation;


# instance fields
.field public final exifValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->UNDEFINED:Lcom/facebook/common/util/ExifOrientation;

    .line 12
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->NORMAL:Lcom/facebook/common/util/ExifOrientation;

    .line 13
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "FLIP_HORIZONTAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->FLIP_HORIZONTAL:Lcom/facebook/common/util/ExifOrientation;

    .line 14
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "ROTATE_180"

    invoke-direct {v0, v1, v7, v7}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->ROTATE_180:Lcom/facebook/common/util/ExifOrientation;

    .line 15
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "FLIP_VERTICAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->FLIP_VERTICAL:Lcom/facebook/common/util/ExifOrientation;

    .line 16
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "TRANSPOSE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->TRANSPOSE:Lcom/facebook/common/util/ExifOrientation;

    .line 17
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "ROTATE_90"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->ROTATE_90:Lcom/facebook/common/util/ExifOrientation;

    .line 18
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "TRANSVERSE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->TRANSVERSE:Lcom/facebook/common/util/ExifOrientation;

    .line 19
    new-instance v0, Lcom/facebook/common/util/ExifOrientation;

    const-string v1, "ROTATE_270"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/common/util/ExifOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->ROTATE_270:Lcom/facebook/common/util/ExifOrientation;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/common/util/ExifOrientation;

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->UNDEFINED:Lcom/facebook/common/util/ExifOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->NORMAL:Lcom/facebook/common/util/ExifOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->FLIP_HORIZONTAL:Lcom/facebook/common/util/ExifOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->ROTATE_180:Lcom/facebook/common/util/ExifOrientation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/common/util/ExifOrientation;->FLIP_VERTICAL:Lcom/facebook/common/util/ExifOrientation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/common/util/ExifOrientation;->TRANSPOSE:Lcom/facebook/common/util/ExifOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/common/util/ExifOrientation;->ROTATE_90:Lcom/facebook/common/util/ExifOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/common/util/ExifOrientation;->TRANSVERSE:Lcom/facebook/common/util/ExifOrientation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/common/util/ExifOrientation;->ROTATE_270:Lcom/facebook/common/util/ExifOrientation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/util/ExifOrientation;->$VALUES:[Lcom/facebook/common/util/ExifOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "exifInterfaceVal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/facebook/common/util/ExifOrientation;->exifValue:I

    .line 35
    return-void
.end method

.method public static fromExifInterfaceOrientation(I)Lcom/facebook/common/util/ExifOrientation;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/common/util/ExifOrientation;->values()[Lcom/facebook/common/util/ExifOrientation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 25
    .local v0, "orientation":Lcom/facebook/common/util/ExifOrientation;
    iget v4, v0, Lcom/facebook/common/util/ExifOrientation;->exifValue:I

    if-ne p0, v4, :cond_0

    .line 26
    return-object v0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "orientation":Lcom/facebook/common/util/ExifOrientation;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ExifInterface Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/util/ExifOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/facebook/common/util/ExifOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/ExifOrientation;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/util/ExifOrientation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/common/util/ExifOrientation;->$VALUES:[Lcom/facebook/common/util/ExifOrientation;

    invoke-virtual {v0}, [Lcom/facebook/common/util/ExifOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/util/ExifOrientation;

    return-object v0
.end method
