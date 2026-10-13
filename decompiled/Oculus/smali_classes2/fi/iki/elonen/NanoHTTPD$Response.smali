.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$Headers;,
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;,
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

.field private keepAlive:Z

.field private mimeType:Ljava/lang/String;

.field private final protocolVersion:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1670
    const-string v2, "HTTP/1.1"

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->protocolVersion:Ljava/lang/String;

    .line 1683
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;Lfi/iki/elonen/NanoHTTPD$1;)V

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    .line 1703
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 1704
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1705
    if-nez p3, :cond_1

    .line 1706
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1707
    iput-wide v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 1712
    :goto_0
    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1713
    iput-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 1714
    return-void

    .line 1709
    :cond_1
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1710
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1885
    const-wide/16 v4, 0x4000

    .line 1886
    long-to-int v0, v4

    new-array v8, v0, [B

    .line 1887
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move-wide v6, p2

    .line 1888
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_0

    if-eqz v0, :cond_1

    .line 1889
    :cond_0
    if-eqz v0, :cond_3

    move-wide v2, v4

    .line 1890
    :goto_2
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v2, v2

    invoke-virtual {v9, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1891
    if-gtz v2, :cond_4

    .line 1899
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1887
    goto :goto_0

    .line 1889
    :cond_3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_2

    .line 1894
    :cond_4
    invoke-virtual {p1, v8, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1895
    if-nez v0, :cond_5

    .line 1896
    int-to-long v2, v2

    sub-long v2, v6, v2

    :goto_3
    move-wide v6, v2

    .line 1898
    goto :goto_1

    :cond_5
    move-wide v2, v6

    goto :goto_3
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1862
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v0, :cond_0

    .line 1863
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1864
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 1865
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1869
    :goto_0
    return-void

    .line 1867
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1852
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v0, :cond_0

    .line 1853
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {v0, p1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1854
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 1855
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    .line 1859
    :goto_0
    return-void

    .line 1857
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    invoke-virtual {v0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1721
    :cond_0
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    invoke-virtual {v0, p1}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isCloseConnection()Z
    .locals 2

    .prologue
    .line 1749
    const-string v0, "close"

    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1834
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1835
    return-void
.end method

.method protected send(Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1788
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1789
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1792
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    if-nez v2, :cond_0

    .line 1793
    new-instance v0, Ljava/lang/Error;

    const-string v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not send response to the client"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1830
    :goto_0
    return-void

    .line 1795
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Lfi/iki/elonen/NanoHTTPD$ContentType;

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    invoke-direct {v5, v6}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1796
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "HTTP/1.1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, " \r\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1797
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1798
    const-string v3, "Content-Type"

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_1
    const-string v3, "date"

    invoke-virtual {p0, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1801
    const-string v3, "Date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    :cond_2
    :goto_1
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    invoke-virtual {v1}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1804
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    invoke-virtual {v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->key(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Lfi/iki/elonen/NanoHTTPD$Response$Headers;

    invoke-virtual {v3, v0}, Lfi/iki/elonen/NanoHTTPD$Response$Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1806
    :cond_3
    const-string v0, "connection"

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1807
    const-string v1, "Connection"

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v0, :cond_8

    const-string v0, "keep-alive"

    :goto_2
    invoke-virtual {p0, v2, v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_4
    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1812
    :cond_5
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v0, :cond_6

    .line 1813
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    .line 1816
    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 1817
    :goto_3
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v3, v4, :cond_a

    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v3, :cond_a

    .line 1818
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {p0, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    :cond_7
    :goto_4
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1823
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1824
    invoke-direct {p0, p1, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    .line 1825
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1826
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1807
    :cond_8
    const-string v0, "close"

    goto :goto_2

    .line 1816
    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 1819
    :cond_a
    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v3, :cond_7

    .line 1820
    invoke-virtual {p0, v2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_4
.end method

.method protected sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    .locals 4

    .prologue
    .line 1838
    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    if-eqz v0, :cond_0

    .line 1842
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1847
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1848
    return-wide p2

    .line 1843
    :catch_0
    move-exception v1

    .line 1844
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content-length was no number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChunkedTransfer(Z)V
    .locals 0

    .prologue
    .line 1902
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1903
    return-void
.end method

.method public setGzipEncoding(Z)V
    .locals 0

    .prologue
    .line 1773
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1774
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .prologue
    .line 1777
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 1778
    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0

    .prologue
    .line 1914
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1915
    return-void
.end method
