.class public Lorg/chromium/components/content_capture/ContentCaptureData;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Landroid/graphics/Rect;

.field public d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(JLjava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr p6, p4

    add-int/2addr p7, p5

    invoke-direct {p1, p4, p5, p6, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->c:Landroid/graphics/Rect;

    return-void
.end method

.method public static createContentCaptureData(Ljava/lang/Object;JLjava/lang/String;IIII)Lorg/chromium/components/content_capture/ContentCaptureData;
    .locals 9

    .line 1
    new-instance v8, Lorg/chromium/components/content_capture/ContentCaptureData;

    move-object v0, v8

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/content_capture/ContentCaptureData;-><init>(JLjava/lang/String;IIII)V

    if-eqz p0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/chromium/components/content_capture/ContentCaptureData;

    .line 3
    iget-object v1, v0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, v0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "id:"

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bounds:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "children:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lorg/chromium/components/content_capture/ContentCaptureData;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/content_capture/ContentCaptureData;

    .line 12
    invoke-virtual {v2}, Lorg/chromium/components/content_capture/ContentCaptureData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
