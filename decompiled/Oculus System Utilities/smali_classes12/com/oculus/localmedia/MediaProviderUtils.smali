.class public Lcom/oculus/localmedia/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;,
        Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;
    }
.end annotation


# static fields
.field private static final GAUDIO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/audio/"

.field private static final GPANO_AUDIO_DATA_END_BYTES:[B

.field private static final GPANO_AUDIO_DATA_START_BYTES:[B

.field private static final GPANO_AUDIO_MIMETYPE_PROPERTY:Ljava/lang/String; = "GAudio:Mime"

.field private static final GPANO_CROPPED_AREA_WIDTH_PROPERTY:Ljava/lang/String; = "GPano:CroppedAreaImageWidthPixels"

.field private static final GPANO_FULL_PANO_WIDTH_PROPERTY:Ljava/lang/String; = "GPano:FullPanoWidthPixels"

.field private static final GPANO_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/panorama/"

.field private static final GPANO_PROJECTION_TYPE_PROPERTY:Ljava/lang/String; = "GPano:ProjectionType"

.field private static final JPEG_APP:I = 0xe1

.field private static final JPEG_HEADER:I = 0xff

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MIN_IMAGE_SIZE:I = 0x400

.field public static final MIN_SQUARE_IMAGE_SIZE:I = 0x800

.field public static final NOMEDIA_FILENAME:Ljava/lang/String; = ".nomedia"

.field private static final SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_PROJECTION_TYPE:Ljava/lang/String; = "equirectangular"

.field public static final VR180_FOV_PERCENT_THRESHOLD:I = 0xa

.field private static final XMP_EXTENSION_NAMESPACE_BYTES:[B

.field private static final XMP_EXTENSION_OFFSET:I

.field private static final XMP_NAMESPACE:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final exifList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 85
    const-string v0, "http://ns.adobe.com/xmp/extension/"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_NAMESPACE_BYTES:[B

    .line 86
    const-string v0, "GAudio:Data=\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->GPANO_AUDIO_DATA_START_BYTES:[B

    .line 87
    const-string v0, "\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->GPANO_AUDIO_DATA_END_BYTES:[B

    .line 88
    sget-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_NAMESPACE_BYTES:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x29

    sput v0, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_OFFSET:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    const/4 v2, 0x0

    new-instance v3, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    const-string v4, "Model"

    const-string v5, "RICOH THETA"

    invoke-direct {v3, v4, v5}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    const-string v4, "Orientation"

    const-string v5, "equirectangular"

    invoke-direct {v3, v4, v5}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    const-string v4, "Software"

    const-string v5, "photosynth"

    invoke-direct {v3, v4, v5}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    .line 97
    const-string v0, "[0-9,a-f,A-F]{4}-[0-9,a-f,A-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJPEGNamespace(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "nameSpace"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->convertJPEGSegmentToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "resultingString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    return-object v0
.end method

.method private static convertJPEGSegmentToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 603
    invoke-static {p0, v1}, Lcom/oculus/localmedia/MediaProviderUtils;->readJPEGSegment(Ljava/io/InputStream;[B)[B

    move-result-object v0

    .line 604
    .local v0, "buffer":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object v1
.end method

.method public static extractAudioFromXMPHeader(Ljava/lang/String;)[B
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 399
    const/4 v7, 0x0

    .line 400
    .local v7, "started":Z
    new-instance v0, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;

    invoke-direct {v0, v8}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;-><init>(Lcom/oculus/localmedia/MediaProviderUtils$1;)V

    .line 402
    .local v0, "data":Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 404
    .local v3, "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    .local v4, "offSet":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    .line 405
    const/16 v9, 0xff

    if-ne v4, v9, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v10, 0xe1

    if-ne v9, v10, :cond_0

    .line 406
    sget-object v9, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_NAMESPACE_BYTES:[B

    invoke-static {v3, v9}, Lcom/oculus/localmedia/MediaProviderUtils;->readJPEGSegment(Ljava/io/InputStream;[B)[B

    move-result-object v5

    .line 407
    .local v5, "segment":[B
    if-eqz v5, :cond_0

    .line 410
    if-nez v7, :cond_1

    .line 411
    sget-object v9, Lcom/oculus/localmedia/MediaProviderUtils;->GPANO_AUDIO_DATA_START_BYTES:[B

    invoke-static {v5, v9}, Lcom/oculus/localmedia/MediaProviderUtils;->indexOf([B[B)I

    move-result v6

    .line 412
    .local v6, "start":I
    if-lez v6, :cond_0

    .line 413
    sget-object v9, Lcom/oculus/localmedia/MediaProviderUtils;->GPANO_AUDIO_DATA_START_BYTES:[B

    array-length v9, v9

    add-int/2addr v9, v6

    array-length v10, v5

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->addSegment([B)V

    .line 414
    const/4 v7, 0x1

    goto :goto_0

    .line 417
    .end local v6    # "start":I
    :cond_1
    sget-object v9, Lcom/oculus/localmedia/MediaProviderUtils;->GPANO_AUDIO_DATA_END_BYTES:[B

    invoke-static {v5, v9}, Lcom/oculus/localmedia/MediaProviderUtils;->indexOf([B[B)I

    move-result v2

    .line 418
    .local v2, "endIndex":I
    if-lez v2, :cond_3

    .line 419
    sget v9, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_OFFSET:I

    invoke-static {v5, v9, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->addSegment([B)V

    .line 427
    .end local v2    # "endIndex":I
    .end local v5    # "segment":[B
    :cond_2
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->decode()[B

    move-result-object v8

    .line 431
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "offSet":I
    :goto_1
    return-object v8

    .line 422
    .restart local v2    # "endIndex":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "offSet":I
    .restart local v5    # "segment":[B
    :cond_3
    sget v9, Lcom/oculus/localmedia/MediaProviderUtils;->XMP_EXTENSION_OFFSET:I

    array-length v10, v5

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/oculus/localmedia/MediaProviderUtils$XMPExtendedMetadata;->addSegment([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v2    # "endIndex":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "offSet":I
    .end local v5    # "segment":[B
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v10, "getJPEGXMPAudio error "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static extractAudioMimeTypeFromXMPHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 372
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "imageFile":Ljava/io/File;
    invoke-static {v1}, Lcom/oculus/localmedia/MediaProviderUtils;->getJPEGXMP(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "xmpString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 382
    .end local v1    # "imageFile":Ljava/io/File;
    .end local v3    # "xmpString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 377
    .restart local v1    # "imageFile":Ljava/io/File;
    .restart local v3    # "xmpString":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 378
    .local v2, "metaData":Lcom/adobe/xmp/XMPMeta;
    const-string v5, "http://ns.google.com/photos/1.0/audio/"

    const-string v6, "GAudio:Mime"

    invoke-static {v2, v5, v6}, Lcom/oculus/localmedia/MediaProviderUtils;->getXMPProperty(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 379
    .end local v1    # "imageFile":Ljava/io/File;
    .end local v2    # "metaData":Lcom/adobe/xmp/XMPMeta;
    .end local v3    # "xmpString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XMP parse failure for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static extractProjectionFromExifHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 442
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 443
    .local v2, "exif":Landroid/media/ExifInterface;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 444
    sget-object v4, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    invoke-static {v4}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->access$100(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "attribute":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    invoke-static {v4}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->access$200(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    const-string v4, "EQUIRECTANGULAR"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i":I
    :goto_1
    return-object v4

    .line 443
    .restart local v0    # "attribute":Ljava/lang/String;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExtractExif failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static extractProjectionFromXMPHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    .line 331
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, "imageFile":Ljava/io/File;
    invoke-static {v3}, Lcom/oculus/localmedia/MediaProviderUtils;->getJPEGXMP(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "xmpString":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 360
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v8    # "xmpString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v9

    .line 336
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local v8    # "xmpString":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    .line 338
    .local v4, "metaData":Lcom/adobe/xmp/XMPMeta;
    const-string v10, "http://ns.google.com/photos/1.0/panorama/"

    const-string v11, "GPano:ProjectionType"

    invoke-static {v4, v10, v11}, Lcom/oculus/localmedia/MediaProviderUtils;->getXMPProperty(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "projType":Ljava/lang/String;
    const-string v10, "equirectangular"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 340
    const-string v9, "EQUIRECTANGULAR"

    goto :goto_0

    .line 343
    :cond_2
    const-string v10, "http://ns.google.com/photos/1.0/panorama/"

    const-string v11, "GPano:CroppedAreaImageWidthPixels"

    invoke-static {v4, v10, v11}, Lcom/oculus/localmedia/MediaProviderUtils;->getXMPProperty(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "croppedWidthStr":Ljava/lang/String;
    const-string v10, "http://ns.google.com/photos/1.0/panorama/"

    const-string v11, "GPano:FullPanoWidthPixels"

    invoke-static {v4, v10, v11}, Lcom/oculus/localmedia/MediaProviderUtils;->getXMPProperty(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "panoWidthStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    .line 347
    const/16 v10, 0xa

    invoke-static {v1, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    .local v0, "croppedWidth":I
    const/16 v10, 0xa

    invoke-static {v6, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 349
    .local v5, "panoWidth":I
    if-lez v0, :cond_0

    if-lez v5, :cond_0

    .line 350
    if-ne v0, v5, :cond_3

    .line 351
    const-string v9, "EQUIRECTANGULAR"

    goto :goto_0

    .line 352
    :cond_3
    mul-int/lit8 v10, v0, 0x2

    sub-int v10, v5, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v12, :cond_0

    .line 353
    const-string v9, "VR180"
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    .end local v0    # "croppedWidth":I
    .end local v1    # "croppedWidthStr":Ljava/lang/String;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v4    # "metaData":Lcom/adobe/xmp/XMPMeta;
    .end local v5    # "panoWidth":I
    .end local v6    # "panoWidthStr":Ljava/lang/String;
    .end local v7    # "projType":Ljava/lang/String;
    .end local v8    # "xmpString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    sget-object v10, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMP parse failure for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 8

    .prologue
    .line 497
    new-instance v4, Ljava/io/File;

    const-string v5, "/storage"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 498
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 499
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 500
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    .line 503
    sget-object v6, Lcom/oculus/localmedia/MediaProviderUtils;->SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 504
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 511
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 499
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getFileExtension(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "includeDot"    # Z

    .prologue
    .line 140
    if-eqz p0, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 141
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 142
    .local v0, "increment":I
    :goto_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 144
    .end local v0    # "increment":I
    :goto_1
    return-object v1

    .line 141
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static getFileFullExtension(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "includeDot"    # Z

    .prologue
    .line 151
    if-eqz p0, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 152
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 153
    .local v0, "increment":I
    :goto_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 155
    .end local v0    # "increment":I
    :goto_1
    return-object v1

    .line 152
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 277
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 278
    .local v0, "index":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 281
    .end local p0    # "filepath":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 266
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHiddenFolders(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 293
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v9, "hiddenFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "media_type=0"

    .line 297
    .local v10, "nonMediaCondition":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "%.nomedia%"

    aput-object v0, v4, v11

    .line 301
    .local v4, "params":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    .line 302
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v2, v11

    const/4 v5, 0x0

    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 309
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, "hiddenFilePath":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 312
    invoke-static {v8}, Lcom/oculus/localmedia/MediaProviderUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "folderPath":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 314
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v7    # "folderPath":Ljava/lang/String;
    .end local v8    # "hiddenFilePath":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 319
    return-object v9
.end method

.method public static getImageOrientationDegrees(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 461
    if-eqz p1, :cond_1

    const-string v4, "image/jpeg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v3

    .line 466
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    .local v1, "orientation":I
    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    .line 469
    const/16 v3, 0x5a

    goto :goto_0

    .line 470
    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 471
    const/16 v3, 0xb4

    goto :goto_0

    .line 472
    :cond_3
    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    .line 473
    const/16 v3, 0x10e

    goto :goto_0

    .line 475
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    :catch_0
    move-exception v2

    .line 476
    .local v2, "throwable":Ljava/lang/Throwable;
    sget-object v4, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v5, "Exif failure when getting orientation:"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getJPEGXMP(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "inputFile"    # Ljava/io/File;

    .prologue
    .line 553
    const/4 v1, 0x0

    .line 555
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 563
    .local v4, "result":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "offSet":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 564
    const/16 v5, 0xff

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v6, 0xe1

    if-ne v5, v6, :cond_0

    .line 565
    const-string v5, "http://ns.adobe.com/xap/1.0/"

    invoke-static {v2, v5}, Lcom/oculus/localmedia/MediaProviderUtils;->checkJPEGNamespace(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 566
    if-eqz v4, :cond_0

    .end local v3    # "offSet":I
    :cond_1
    :goto_0
    move-object v1, v2

    .line 574
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :goto_1
    return-object v4

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v6, "getJPEGXMP BufferedInputStream Exception "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const/4 v4, 0x0

    goto :goto_1

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v6, "getJPEGXMP IOException "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getXMPProperty(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "metaData"    # Lcom/adobe/xmp/XMPMeta;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 386
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p0, p1, p2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasExternalStorage()Z
    .locals 2

    .prologue
    .line 487
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static indexOf([B[B)I
    .locals 5
    .param p0, "outerArray"    # [B
    .param p1, "smallerArray"    # [B

    .prologue
    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    array-length v4, p1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3

    .line 579
    const/4 v0, 0x1

    .line 580
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 581
    add-int v3, v1, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 582
    const/4 v0, 0x0

    .line 586
    :cond_0
    if-eqz v0, :cond_2

    .line 590
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "j":I
    :goto_2
    return v1

    .line 580
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 578
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private static isBlacklistedPano(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "path":Ljava/lang/String;
    const-string v1, "oculus/screenshots"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isLikelyPano(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x400

    const/4 v0, 0x1

    .line 242
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->isBlacklistedPano(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 257
    :cond_1
    :goto_0
    return v0

    .line 245
    :cond_2
    if-ne p1, p2, :cond_3

    const/16 v2, 0x800

    if-ge p1, v2, :cond_1

    .line 248
    :cond_3
    mul-int/lit8 v2, p2, 0xc

    if-eq p1, v2, :cond_4

    mul-int/lit8 v2, p2, 0x6

    if-ne p1, v2, :cond_5

    :cond_4
    if-ge p2, v3, :cond_1

    .line 251
    :cond_5
    mul-int/lit8 v2, p1, 0xc

    if-eq p2, v2, :cond_6

    mul-int/lit8 v2, p1, 0x6

    if-ne p2, v2, :cond_7

    :cond_6
    if-ge p1, v3, :cond_1

    .line 254
    :cond_7
    mul-int/lit8 v2, p2, 0x4

    if-ne p1, v2, :cond_8

    if-ge p1, v3, :cond_1

    :cond_8
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public static isPrivateFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils;->isPrivateFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPrivateFolder(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "noMediaFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 133
    .end local v0    # "noMediaFile":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWhitelistedPano(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "path":Ljava/lang/String;
    const-string v1, "oculus/360photos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".vr.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readAll(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 519
    :cond_0
    const/4 v6, 0x0

    .line 549
    :goto_0
    return-object v6

    .line 522
    :cond_1
    const/4 v0, 0x0

    .line 523
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 524
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    .end local v0    # "in":Ljava/io/FileInputStream;
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 536
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 540
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v3, :cond_2

    .line 541
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 543
    :cond_2
    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 549
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 540
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v4, :cond_5

    .line 541
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 543
    :cond_5
    if-eqz v1, :cond_6

    .line 544
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 547
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 546
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 548
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 539
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 540
    :goto_4
    if-eqz v3, :cond_7

    .line 541
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 543
    :cond_7
    if-eqz v0, :cond_8

    .line 544
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 547
    :cond_8
    :goto_5
    throw v6

    .line 546
    :catch_2
    move-exception v7

    goto :goto_5

    .line 539
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 546
    :catch_3
    move-exception v6

    goto :goto_3

    .line 536
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v0, v1

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static readJPEGSegment(Ljava/io/InputStream;[B)[B
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "namespace"    # [B

    .prologue
    const/4 v5, 0x0

    .line 608
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 609
    .local v1, "dataStream":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 612
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 613
    .local v4, "sizeOfStream":I
    const/4 v6, 0x2

    if-gt v4, v6, :cond_0

    .line 633
    .end local v4    # "sizeOfStream":I
    :goto_0
    return-object v5

    .line 616
    .restart local v4    # "sizeOfStream":I
    :cond_0
    add-int/lit8 v6, v4, -0x2

    new-array v0, v6, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v4    # "sizeOfStream":I
    :goto_1
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :goto_2
    if-eqz p1, :cond_2

    .line 626
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 627
    aget-byte v6, p1, v3

    aget-byte v7, v0, v3

    if-eq v6, v7, :cond_1

    .line 628
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Namespace not matching at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v7, "convertJPEGSegmentToString error : "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 622
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 623
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v7, "convertJPEGSegmentToString error : "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 626
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    :cond_2
    move-object v5, v0

    .line 633
    goto :goto_0
.end method

.method public static removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 165
    .end local p0    # "filepath":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static saveToCache(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 172
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v7

    .line 176
    :cond_1
    const/4 v5, 0x0

    .line 178
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 181
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 182
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 183
    .local v3, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_2

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 189
    .end local v4    # "length":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 190
    .end local v0    # "buffer":[B
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    sget-object v8, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error saving content:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    if-eqz v5, :cond_0

    .line 194
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 195
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "imageFile":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "length":I
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v5, v6

    .line 188
    .end local v0    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "length":I
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 192
    if-eqz v5, :cond_0

    .line 194
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 195
    :catch_2
    move-exception v8

    goto :goto_0

    .line 192
    .end local v2    # "imageFile":Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_4

    .line 194
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 196
    :cond_4
    :goto_4
    throw v7

    .line 195
    :catch_3
    move-exception v8

    goto :goto_4

    .line 192
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "imageFile":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 189
    .end local v0    # "buffer":[B
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static shouldTreatImageAsPano(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 208
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->isWhitelistedPano(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/oculus/localmedia/MediaProviderUtils;->isLikelyPano(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
