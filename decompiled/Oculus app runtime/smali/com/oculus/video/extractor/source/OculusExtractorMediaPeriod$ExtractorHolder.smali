.class final Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lcom/oculus/android/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/oculus/android/exoplayer2/extractor/Extractor;Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->context:Landroid/content/Context;

    .line 843
    iput-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/oculus/android/exoplayer2/extractor/Extractor;

    .line 844
    iput-object p3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;)Z
    .locals 0

    .line 824
    invoke-direct {p0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->shouldBypassDataSource()Z

    move-result p0

    return p0
.end method

.method private shouldBypassDataSource()Z
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->release()V

    const/4 v0, 0x0

    .line 892
    iput-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    :cond_0
    return-void
.end method

.method public selectExtractor(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/extractor/Extractor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    return-object v0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/oculus/android/exoplayer2/extractor/Extractor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 865
    :try_start_0
    instance-of v4, v3, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;

    iget-object v5, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->context:Landroid/content/Context;

    .line 866
    invoke-virtual {v4, v5, p2}, Lcom/oculus/video/extractor/source/OculusFrameworkSourceExtractor;->sniff(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    goto :goto_1

    .line 867
    :cond_1
    invoke-interface {v3, p1}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    .line 869
    iput-object v3, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 876
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    :cond_3
    throw p2

    :catch_0
    nop

    if-eqz p1, :cond_4

    :goto_2
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_6

    .line 884
    iget-object p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/Extractor;->init(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 886
    iget-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractor:Lcom/oculus/android/exoplayer2/extractor/Extractor;

    return-object p1

    .line 881
    :cond_6
    new-instance p1, Lcom/oculus/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$ExtractorHolder;->extractors:[Lcom/oculus/android/exoplayer2/extractor/Extractor;

    .line 882
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/oculus/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
