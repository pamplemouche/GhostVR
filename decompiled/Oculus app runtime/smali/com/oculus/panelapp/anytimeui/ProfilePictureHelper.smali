.class public final Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
.super Ljava/lang/Object;
.source "ProfilePictureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;,
        Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;
    }
.end annotation


# static fields
.field private static final IMPL_RENDER_FLAG_BLACK_AND_WHITE:I = 0x1

.field private static final IMPL_RENDER_FLAG_NORMAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final PAINT_FLAGS:I

.field private mBackgroundColor:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultProfilePictureOffline:Landroid/graphics/Bitmap;

.field private mDefaultProfilePictureOfflineSelected:Landroid/graphics/Bitmap;

.field private mDefaultProfilePictureOnline:Landroid/graphics/Bitmap;

.field private mDefaultProfilePictureOnlineSelected:Landroid/graphics/Bitmap;

.field private mInitialized:Z

.field private mOfflineColor:I

.field private mOnlineColor:I

.field private mSelectIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUISocialIconsBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 429
    iput v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->PAINT_FLAGS:I

    .line 26
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->bitmapToGreyscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewToBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bitmapToGreyscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 184
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 188
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 189
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 191
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 192
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 194
    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    add-float v1, p2, p3

    div-float/2addr v1, v0

    int-to-float p4, p4

    sub-float/2addr v1, p4

    .line 384
    invoke-virtual {p1, p2, p3, v1, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FLandroid/graphics/Paint;I)V
    .locals 0

    int-to-float p4, p4

    sub-float p4, p2, p4

    .line 389
    invoke-virtual {p1, p2, p2, p4, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 14

    move-object v6, p0

    .line 257
    iget-object v0, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$dimen;->social_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    iget-object v1, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/anytimeui/R$dimen;->social_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 263
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 264
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v9, v0

    int-to-float v10, v1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, v8, v9, v10, v2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setupCanvasBitmapMask(Landroid/graphics/Canvas;FFI)Landroid/graphics/Paint;

    move-result-object v3

    .line 267
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x0

    move-object v0, p1

    .line 268
    invoke-virtual {v8, p1, v12, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 270
    new-instance v5, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 271
    iget v0, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mBackgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->drawCircle(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    iget-object v1, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mSelectIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1, v12, v11, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 284
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p2, :cond_1

    .line 287
    iget v1, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mOnlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget v1, v6, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mOfflineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    :goto_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const v1, 0x3e19999a    # 0.15f

    mul-float v9, v9, v1

    const v1, 0x3f59999a    # 0.85f

    mul-float v10, v10, v1

    const/high16 v1, 0x40800000    # 4.0f

    .line 296
    invoke-virtual {v8, v9, v10, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v7
.end method

.method private getDefaultProfilePicture(ZZ)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 206
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnlineSelected:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    .line 210
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1, v0, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnlineSelected:Landroid/graphics/Bitmap;

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnlineSelected:Landroid/graphics/Bitmap;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 216
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnline:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    .line 220
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 222
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnline:Landroid/graphics/Bitmap;

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOnline:Landroid/graphics/Bitmap;

    return-object p1

    :cond_3
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 226
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOfflineSelected:Landroid/graphics/Bitmap;

    if-nez p1, :cond_4

    .line 229
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    .line 230
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 232
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOfflineSelected:Landroid/graphics/Bitmap;

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOfflineSelected:Landroid/graphics/Bitmap;

    return-object p1

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOffline:Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    .line 239
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_default_profile:I

    .line 240
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 242
    invoke-direct {p0, p1, v1, v1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getCroppedProfile(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOffline:Landroid/graphics/Bitmap;

    .line 244
    :cond_6
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mDefaultProfilePictureOffline:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static getProfileUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private initialize()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$drawable;->ic_social_select:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mSelectIcon:Landroid/graphics/Bitmap;

    .line 33
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeIconBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mBackgroundColor:I

    .line 34
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeRecordingDot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mOnlineColor:I

    .line 35
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$color;->colorAnytimeOfflineDot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mOfflineColor:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mInitialized:Z

    return-void
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private setImageViewToBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 176
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupCanvasBitmapMask(Landroid/graphics/Canvas;FFI)Landroid/graphics/Paint;
    .locals 7

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 371
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v1, -0xbdbdbe

    .line 372
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    .line 373
    invoke-direct/range {v1 .. v6}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->drawCircle(Landroid/graphics/Canvas;FFILandroid/graphics/Paint;)V

    .line 375
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method


# virtual methods
.method public drawDoubleStroke(Landroid/graphics/Canvas;FI)V
    .locals 3

    .line 393
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v2, -0xe3e1e0

    .line 395
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40c00000    # 6.0f

    .line 396
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 397
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 398
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->drawCircle(Landroid/graphics/Canvas;FLandroid/graphics/Paint;I)V

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v1, -0xf0f10

    .line 402
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 403
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 404
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 406
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->drawCircle(Landroid/graphics/Canvas;FLandroid/graphics/Paint;I)V

    return-void
.end method

.method public getCombinedProfilePictureBitmap(Ljava/util/List;II[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;II[",
            "Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 321
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 322
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-direct {v0, v7, v2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 326
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    int-to-float v9, v2

    .line 328
    invoke-direct {v0, v7, v9, v9, v3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setupCanvasBitmapMask(Landroid/graphics/Canvas;FFI)Landroid/graphics/Paint;

    move-result-object v9

    float-to-int v10, v8

    .line 333
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v5, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    new-instance v12, Landroid/graphics/Rect;

    div-int/lit8 v13, v2, 0x4

    mul-int/lit8 v14, v13, 0x3

    invoke-direct {v12, v13, v5, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v5, v5, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v10, v5, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v10, v5, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    const/4 v10, 0x2

    if-eq v2, v10, :cond_1

    const/4 v2, 0x0

    .line 352
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v14, v11, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v15, 0x1

    .line 353
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v14, v11, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 354
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v12, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v15, 0x1

    .line 347
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v5, v12, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 348
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v12, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 344
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v11, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    if-eqz v4, :cond_3

    .line 359
    array-length v1, v4

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v5, v4, v2

    .line 360
    invoke-interface {v5, v7, v8, v3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;->modify(Landroid/graphics/Canvas;FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v6
.end method

.method public getRoundedImageBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 310
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, p2

    .line 312
    invoke-direct {p0, v1, v2, v2, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setupCanvasBitmapMask(Landroid/graphics/Canvas;FFI)Landroid/graphics/Paint;

    move-result-object p3

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    .line 314
    invoke-virtual {v1, p1, p2, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZ)V
    .locals 7

    .line 100
    sget-object v5, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V

    return-void
.end method

.method public setImageViewFromUrl(Landroid/widget/ImageView;Ljava/lang/String;ZZLcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;Z)V
    .locals 8

    .line 121
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->initialize()V

    :cond_0
    if-nez p6, :cond_1

    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewToDefaultProfilePicture(Landroid/widget/ImageView;ZZ)V

    :cond_2
    if-eqz p2, :cond_4

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lcom/oculus/vrshell/panels/ImageLoader;->getInstance()Lcom/oculus/vrshell/panels/ImageLoader;

    move-result-object p6

    new-instance v7, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$1;-><init>(Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;ZZLandroid/widget/ImageView;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p6, p2, v7}, Lcom/oculus/vrshell/panels/ImageLoader;->loadImage(Ljava/lang/String;Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setImageViewToDefaultProfilePicture(Landroid/widget/ImageView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewToDefaultProfilePicture(Landroid/widget/ImageView;ZZ)V

    return-void
.end method

.method public setImageViewToDefaultProfilePicture(Landroid/widget/ImageView;ZZ)V
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->initialize()V

    .line 70
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->getDefaultProfilePicture(ZZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->setImageViewToBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
