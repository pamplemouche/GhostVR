.class public Lcom/oculus/library/utils/app/ImagesBuilder;
.super Ljava/lang/Object;
.source "ImagesBuilder.java"


# static fields
.field private static final IMAGE_LANDSCAPE_HEIGHT:I = 0x78

.field private static final IMAGE_LANDSCAPE_WIDTH:I = 0x168

.field private static final IMAGE_MAIN_HEIGHT:I = 0x195

.field private static final IMAGE_MAIN_WIDTH:I = 0x2d0

.field private static final IMAGE_SQUARE_HEIGHT:I = 0x2d0

.field private static final IMAGE_SQUARE_WIDTH:I = 0x2d0

.field private static final IMAGE_TINY_HEIGHT:I = 0xcb

.field private static final IMAGE_TINY_WIDTH:I = 0x168


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x2d0

    if-eqz p0, :cond_0

    .line 30
    sget-object v2, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    new-instance v3, Lcom/oculus/library/model/Image;

    sget-object v4, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {v3, v4, p0, v1, v1}, Lcom/oculus/library/model/Image;-><init>(Lcom/oculus/library/model/Image$ImageName;Ljava/lang/String;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    sget-object p0, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    new-instance v2, Lcom/oculus/library/model/Image;

    sget-object v3, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    const/16 v4, 0x195

    invoke-direct {v2, v3, p1, v1, v4}, Lcom/oculus/library/model/Image;-><init>(Lcom/oculus/library/model/Image$ImageName;Ljava/lang/String;II)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 p0, 0x168

    if-eqz p2, :cond_2

    .line 47
    sget-object p1, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    new-instance v1, Lcom/oculus/library/model/Image;

    sget-object v2, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    const/16 v3, 0xcb

    invoke-direct {v1, v2, p2, p0, v3}, Lcom/oculus/library/model/Image;-><init>(Lcom/oculus/library/model/Image$ImageName;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 54
    sget-object p1, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    new-instance p2, Lcom/oculus/library/model/Image;

    sget-object v1, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    const/16 v2, 0x78

    invoke-direct {p2, v1, p3, p0, v2}, Lcom/oculus/library/model/Image;-><init>(Lcom/oculus/library/model/Image$ImageName;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
