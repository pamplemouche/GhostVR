.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;
.super Landroid/view/View;
.source "AnytimeUIGroupImageView.java"


# static fields
.field private static final PADDING:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCombinedBitmap:Landroid/graphics/Bitmap;

.field private final mDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private mDiameter:I

.field private mFallbackBitmap:Landroid/graphics/Bitmap;

.field private mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

.field private mURLs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;[Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mDiameter:I

    .line 35
    new-instance p4, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    invoke-direct {p4, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    .line 36
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 37
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mFallbackBitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mURLs:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->setBitmaps(Ljava/util/List;)V

    .line 42
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mURLs:[Ljava/lang/String;

    .line 44
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;

    invoke-direct {p3, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)V

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImages(Ljava/util/List;Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)[Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mURLs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;Ljava/util/List;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->setBitmaps(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    return-object p0
.end method

.method private setBitmaps(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mFallbackBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mProfilePictureHelper:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    iget v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mDiameter:I

    const/4 v3, 0x4

    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;

    const/4 v4, 0x0

    new-instance v5, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$2;

    invoke-direct {v5, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$2;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)V

    aput-object v5, v0, v4

    .line 76
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCombinedProfilePictureBitmap(Ljava/util/List;II[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mCombinedBitmap:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->mCombinedBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
