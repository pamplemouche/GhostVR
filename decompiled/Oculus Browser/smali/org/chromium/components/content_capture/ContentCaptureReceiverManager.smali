.class public Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "dump-captured-content-to-logcat-for-testing"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private didCaptureContent([Ljava/lang/Object;Lorg/chromium/components/content_capture/ContentCaptureData;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ContentCapture"

    const-string v0, "Captured Content: %s"

    invoke-static {p2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private didRemoveContent([Ljava/lang/Object;[J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a([Ljava/lang/Object;)LTS0;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ContentCapture"

    const-string p2, "Removed Content: %s"

    invoke-static {p1, p2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private didRemoveSession([Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a([Ljava/lang/Object;)LTS0;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "ContentCapture"

    const-string v1, "Removed Session: %s"

    invoke-static {p1, v1, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private didUpdateContent([Ljava/lang/Object;Lorg/chromium/components/content_capture/ContentCaptureData;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/chromium/components/content_capture/ContentCaptureReceiverManager;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ContentCapture"

    const-string v0, "Updated Content: %s"

    invoke-static {p2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)LTS0;
    .locals 4

    .line 1
    new-instance v0, LTS0;

    array-length v1, p1

    invoke-direct {v0, v1}, LTS0;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    check-cast v3, Lorg/chromium/components/content_capture/ContentCaptureData;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
