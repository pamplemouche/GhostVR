.class Lcom/oculus/vrapi/Appshot;
.super Ljava/lang/Object;
.source "AppShot.java"


# static fields
.field public static final INTENT_KEY_FROM_PKG:Ljava/lang/String; = "intent_pkg"

.field public static final INTENT_KEY_JPEG:Ljava/lang/String; = "jpg_data"

.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell"

.field public static final SYSTEMUX_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemux"

.field private static final TAG:Ljava/lang/String; = "Appshot"

.field private static mCachedContext:Landroid/content/Context;

.field private static mClientPackageName:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static volatile mImageAcquireLooper:Landroid/os/Looper;

.field private static volatile mImageAvailable:Z

.field private static mImageReader:Landroid/media/ImageReader;

.field private static final mInitLock:Ljava/lang/Object;

.field private static volatile mInitialized:Z

.field private static volatile mLatestImage:Landroid/media/Image;

.field private static mSurface:Landroid/view/Surface;

.field private static final mWriteLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/oculus/vrapi/Appshot;->mInitialized:Z

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    .line 40
    sput-boolean v0, Lcom/oculus/vrapi/Appshot;->mImageAvailable:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ConvertImageToJpg(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V
    .locals 11

    const/4 v0, 0x0

    .line 192
    aget-object v1, p4, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "Appshot"

    const-string p1, "No image data in buffer."

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "ConvertImageToJpg"

    .line 199
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    .line 204
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 206
    aget-object v1, p4, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    .line 207
    aget-object p4, p4, v0

    invoke-virtual {p4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p4

    mul-int v3, v1, p0

    sub-int/2addr p4, v3

    mul-int v3, p0, p1

    .line 213
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 216
    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v6, 0x1

    .line 217
    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v6, 0x2

    .line 218
    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v6, 0x3

    .line 219
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v9, v0

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v10, 0x18

    or-int/2addr v7, v8

    .line 220
    aput v7, v4, v5

    add-int/2addr v6, v1

    .line 222
    rem-int v7, v5, p0

    if-nez v7, :cond_1

    if-eqz v5, :cond_1

    add-int/2addr v6, p4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 229
    :cond_2
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p0, p1, p4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 230
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 231
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static SendAppshotToShell([Landroid/media/Image$Plane;)V
    .locals 4

    const-string v0, "Appshot"

    const-string v1, "SendAppshotToShell"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    sget-object v1, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v1

    sget-object v2, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v2

    const/16 v3, 0x55

    invoke-static {v1, v2, v3, v0, p0}, Lcom/oculus/vrapi/Appshot;->ConvertImageToJpg(IIILjava/io/OutputStream;[Landroid/media/Image$Plane;)V

    .line 246
    :try_start_0
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 248
    :try_start_1
    sput-boolean v1, Lcom/oculus/vrapi/Appshot;->mImageAvailable:Z

    .line 249
    sget-object v1, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 250
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Appshot"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendAppshotToShell failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mClientPackageName:Ljava/lang/String;

    const-string v1, "com.oculus.vrshell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 260
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mCachedContext:Landroid/content/Context;

    sget-object v1, Lcom/oculus/vrapi/Appshot;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/oculus/vrapi/Appshot;->broadcastImageToShell(Landroid/content/Context;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .line 21
    sput-object p0, Lcom/oculus/vrapi/Appshot;->mImageAcquireLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$100(Landroid/os/Handler;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/oculus/vrapi/Appshot;->setImageListener(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/oculus/vrapi/Appshot;->mImageAvailable:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lcom/oculus/vrapi/Appshot;->mImageAvailable:Z

    return p0
.end method

.method static synthetic access$400()Landroid/media/Image;
    .locals 1

    .line 21
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    .line 21
    sput-object p0, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    return-object p0
.end method

.method static broadcastImageToShell(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "Appshot"

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastImageToShell intent_pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " jpg_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.oculus.vrshell.intent.action.UPDATE_APP_SCREENSHOT"

    const-string v1, "com.oculus.systemux"

    .line 275
    invoke-static {p0, v0, v1, p1, p2}, Lcom/oculus/vrapi/Appshot;->sendImageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v0, "com.oculus.vrshell.intent.action.UPDATE_APP_SCREENSHOT"

    const-string v1, "com.oculus.vrshell"

    .line 276
    invoke-static {p0, v0, v1, p1, p2}, Lcom/oculus/vrapi/Appshot;->sendImageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Appshot"

    const-string p1, "Failed to pass packageName"

    .line 270
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getSurface()Landroid/view/Surface;
    .locals 1

    .line 46
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static init(Landroid/content/Context;II)Z
    .locals 3

    const-string v0, "Appshot"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    sget-boolean v1, Lcom/oculus/vrapi/Appshot;->mInitialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 63
    :cond_0
    sput-boolean v2, Lcom/oculus/vrapi/Appshot;->mInitialized:Z

    .line 65
    :goto_0
    sput-object p0, Lcom/oculus/vrapi/Appshot;->mCachedContext:Landroid/content/Context;

    .line 66
    invoke-static {p1, p2, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    sput-object p0, Lcom/oculus/vrapi/Appshot;->mImageReader:Landroid/media/ImageReader;

    .line 67
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    sput-object p0, Lcom/oculus/vrapi/Appshot;->mSurface:Landroid/view/Surface;

    .line 68
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 70
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/oculus/vrapi/Appshot;->setImageListener(Landroid/os/Handler;)V

    .line 71
    monitor-exit v0

    return v2

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/oculus/vrapi/Appshot$1;

    invoke-direct {p1}, Lcom/oculus/vrapi/Appshot$1;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 86
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Appshot"

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init() Failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object p0, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p1, 0x0

    .line 94
    :try_start_3
    sput-boolean p1, Lcom/oculus/vrapi/Appshot;->mInitialized:Z

    .line 95
    sget-object p2, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static release()V
    .locals 4

    .line 103
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mCachedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "Appshot"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oculus/vrapi/Appshot;->mCachedContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    sget-object v1, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    sget-boolean v2, Lcom/oculus/vrapi/Appshot;->mImageAvailable:Z

    if-eqz v2, :cond_1

    .line 118
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mWriteLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 120
    :cond_1
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_2

    .line 122
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 124
    :cond_2
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    if-eqz v2, :cond_3

    .line 126
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mLatestImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 128
    :cond_3
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mImageAcquireLooper:Landroid/os/Looper;

    if-eqz v2, :cond_4

    .line 130
    sget-object v2, Lcom/oculus/vrapi/Appshot;->mImageAcquireLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_4
    const/4 v2, 0x0

    .line 132
    sput-object v2, Lcom/oculus/vrapi/Appshot;->mSurface:Landroid/view/Surface;

    .line 133
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 134
    :try_start_3
    sput-boolean v1, Lcom/oculus/vrapi/Appshot;->mInitialized:Z

    .line 135
    sget-object v1, Lcom/oculus/vrapi/Appshot;->mInitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 136
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 133
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Appshot"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static sendImageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "intent_pkg"

    .line 282
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "jpg_data"

    .line 283
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 284
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setClient(Ljava/lang/String;)V
    .locals 2

    .line 146
    sput-object p0, Lcom/oculus/vrapi/Appshot;->mClientPackageName:Ljava/lang/String;

    const-string p0, "Appshot"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appshot client set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oculus/vrapi/Appshot;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setImageListener(Landroid/os/Handler;)V
    .locals 2

    .line 152
    sget-object v0, Lcom/oculus/vrapi/Appshot;->mImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/oculus/vrapi/Appshot$2;

    invoke-direct {v1}, Lcom/oculus/vrapi/Appshot$2;-><init>()V

    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method
