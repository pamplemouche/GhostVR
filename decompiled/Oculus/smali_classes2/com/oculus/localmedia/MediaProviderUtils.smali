.class public Lcom/oculus/localmedia/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;
    }
.end annotation


# static fields
.field private static final SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

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
    .line 48
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

    .line 52
    const-string v0, "[0-9,a-f,A-F]{4}-[0-9,a-f,A-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkJPEGNamespace(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->convertJPEGSegmentToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    return-object v0
.end method

.method public static containsEquirectHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->isSupportedXMPProjection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oculus/localmedia/MediaProviderUtils;->isSupportedExif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertJPEGSegmentToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 180
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 185
    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    .line 197
    :goto_0
    return-object v0

    .line 188
    :cond_0
    add-int/lit8 v1, v1, -0x2

    new-array v0, v1, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 193
    :goto_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    sget-object v3, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v4, "convertJPEGSegmentToString error : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "convertJPEGSegmentToString error : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_1

    .line 130
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 134
    sget-object v5, Lcom/oculus/localmedia/MediaProviderUtils;->SDCARD_FOLDER_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    return-object v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getFileExtension(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    if-eqz p0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 243
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 244
    :goto_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_1
    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static getJPEGXMP(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 157
    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xe1

    if-ne v2, v3, :cond_0

    .line 158
    const-string v2, "http://ns.adobe.com/xap/1.0/"

    invoke-static {v1, v2}, Lcom/oculus/localmedia/MediaProviderUtils;->checkJPEGNamespace(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "getJPEGXMP BufferedInputStream Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    .line 165
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "getJPEGXMP IOException "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isSupportedExif(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 100
    :goto_0
    sget-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 101
    sget-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->access$000(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_0

    sget-object v0, Lcom/oculus/localmedia/MediaProviderUtils;->exifList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;

    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;->access$100(Lcom/oculus/localmedia/MediaProviderUtils$ExifChecks;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 109
    :goto_1
    return v0

    .line 100
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v2, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtractExif failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method private static isSupportedXMPProjection(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils;->getJPEGXMP(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 75
    :goto_0
    if-eqz v0, :cond_1

    .line 76
    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano:ProjectionType"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v2, "GPano:ProjectionType"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "equirectangular"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 89
    :goto_1
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v0, Lcom/oculus/localmedia/LocalMediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMP parse failure for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static readAll(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 204
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 226
    :goto_2
    if-eqz v0, :cond_2

    .line 227
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 229
    :cond_2
    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 235
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_4
    if-eqz v1, :cond_5

    .line 227
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 229
    :cond_5
    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 232
    :catch_1
    move-exception v0

    goto :goto_3

    .line 225
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 226
    :goto_4
    if-eqz v1, :cond_6

    .line 227
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 229
    :cond_6
    if-eqz v2, :cond_7

    .line 230
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 233
    :cond_7
    :goto_5
    throw v0

    .line 232
    :catch_2
    move-exception v1

    goto :goto_5

    .line 225
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 232
    :catch_3
    move-exception v0

    goto :goto_3

    .line 222
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    if-eqz p0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 256
    :cond_0
    return-object p0
.end method
