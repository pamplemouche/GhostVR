.class public Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;
.super Lcom/facebook/mobileconfig/MobileConfigMmapHandle;
.source "MobileConfigJavaMmapHandle.java"


# instance fields
.field private final mFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/mobileconfig/MobileConfigMmapHandle;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;->mFilename:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/mobileconfig/MobileConfigJavaMmapHandle;->mmapFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
