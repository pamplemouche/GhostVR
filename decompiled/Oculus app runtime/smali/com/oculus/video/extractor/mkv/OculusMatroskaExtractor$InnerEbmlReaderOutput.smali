.class final Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source "OculusMatroskaExtractor.java"

# interfaces
.implements Lcom/oculus/video/extractor/mkv/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;


# direct methods
.method private constructor <init>(Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$1;)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILcom/oculus/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->binaryElement(IILcom/oculus/android/exoplayer2/extractor/ExtractorInput;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1568
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->endMasterElement(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1578
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->floatElement(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->getElementType(I)I

    move-result p1

    return p1
.end method

.method public integerElement(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1573
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->integerElement(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->isLevel1Element(I)Z

    move-result p1

    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1563
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method
