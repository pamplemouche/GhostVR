.class public Lcom/oculus/vrshell/Screenshot;
.super Ljava/lang/Object;
.source "Screenshot.java"


# static fields
.field private static final COMPRESSION_QUALITY:I = 0x55

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDstPackage:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private final mHeight:I

.field private mImageReader:Landroid/media/ImageReader;

.field private volatile mLatestImage:Landroid/media/Image;

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/oculus/vrshell/Screenshot;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/Screenshot;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oculus/vrshell/Screenshot;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/oculus/vrshell/Screenshot;->mDstPackage:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/oculus/vrshell/Screenshot;->mWidth:I

    .line 37
    iput p4, p0, Lcom/oculus/vrshell/Screenshot;->mHeight:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/oculus/vrshell/Screenshot;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/Screenshot;)Landroid/media/Image;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/vrshell/Screenshot;->mLatestImage:Landroid/media/Image;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oculus/vrshell/Screenshot;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oculus/vrshell/Screenshot;->mLatestImage:Landroid/media/Image;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/vrshell/Screenshot;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/vrshell/Screenshot;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/Screenshot;->convertImageToJpg(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/Screenshot;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/vrshell/Screenshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/oculus/vrshell/Screenshot;->broadCastToMediaScanner(Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/vrshell/Screenshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/Screenshot;->sendNotif(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/vrshell/Screenshot;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oculus/vrshell/Screenshot;->release()V

    return-void
.end method

.method private static broadCastToMediaScanner(Ljava/io/File;Landroid/content/Context;)V
    .locals 2

    .line 111
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static convertImageToJpg(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V
    .locals 8

    const/4 v0, 0x0

    .line 123
    aget-object v1, p4, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    sget-object p0, Lcom/oculus/vrshell/Screenshot;->TAG:Ljava/lang/String;

    const-string p1, "No image data in buffer."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    aget-object v1, p4, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 129
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [I

    .line 131
    aget-object v3, p4, v0

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3

    .line 132
    aget-object p4, p4, v0

    invoke-virtual {p4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p4

    mul-int v4, v3, p0

    sub-int/2addr p4, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    mul-int v6, p1, p0

    if-ge v4, v6, :cond_2

    .line 139
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v0

    add-int/lit8 v7, v5, 0x1

    .line 140
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x2

    .line 141
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x3

    .line 142
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    .line 143
    aput v6, v2, v4

    add-int/2addr v5, v3

    .line 145
    rem-int v6, v4, p0

    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    add-int/2addr v5, p4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p0, p1, p4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 151
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method

.method private static createMediaFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Oculus/Screenshots"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    sget-object p0, Lcom/oculus/vrshell/Screenshot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving Screen Capture file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private release()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mLatestImage:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mLatestImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    return-void
.end method

.method private sendNotif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 167
    iget-object v1, v0, Lcom/oculus/vrshell/Screenshot;->mContext:Landroid/content/Context;

    sget v7, Lcom/oculus/common/notifications/R$drawable;->ic_gallery:I

    sget-object v11, Lcom/oculus/notifications/NotificationsDisplayDuration;->SHORT:Lcom/oculus/notifications/NotificationsDisplayDuration;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "Oculus_Screenshot"

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v16}, Lcom/oculus/notifications/NotificationSender;->sendInternalNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLcom/oculus/notifications/NotificationsDisplayDuration;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method private setImageListener(Landroid/os/Handler;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/oculus/vrshell/Screenshot$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/Screenshot$1;-><init>(Lcom/oculus/vrshell/Screenshot;)V

    invoke-virtual {v0, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mDstPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/vrshell/Screenshot;->createMediaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mFile:Ljava/io/File;

    .line 46
    iget v0, p0, Lcom/oculus/vrshell/Screenshot;->mWidth:I

    iget v1, p0, Lcom/oculus/vrshell/Screenshot;->mHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mImageReader:Landroid/media/ImageReader;

    .line 47
    iget-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/Screenshot;->mSurface:Landroid/view/Surface;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/Screenshot;->setImageListener(Landroid/os/Handler;)V

    return-void
.end method
