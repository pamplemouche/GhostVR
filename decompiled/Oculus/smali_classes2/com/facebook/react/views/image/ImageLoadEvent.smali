.class public Lcom/facebook/react/views/image/ImageLoadEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "ImageLoadEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/image/ImageLoadEvent$ImageEventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event",
        "<",
        "Lcom/facebook/react/views/image/ImageLoadEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventType:I

.field private final mHeight:I

.field private final mImageError:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mImageUri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 46
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/events/Event;-><init>(I)V

    .line 62
    iput p2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    .line 63
    iput-object p3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    .line 64
    iput p4, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    .line 65
    iput p5, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    .line 66
    iput-object p6, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageError:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 42
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static eventNameForType(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    const-string v0, "topError"

    .line 80
    :goto_0
    return-object v0

    .line 74
    :pswitch_1
    const-string v0, "topLoad"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "topLoadEnd"

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "topLoadStart"

    goto :goto_0

    .line 80
    :pswitch_4
    const-string v0, "topProgress"

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 100
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-ne v1, v3, :cond_3

    .line 103
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "uri"

    iget-object v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-ne v1, v4, :cond_4

    .line 110
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 111
    const-string v2, "width"

    iget v3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mWidth:I

    int-to-double v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 112
    const-string v2, "height"

    iget v3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mHeight:I

    int-to-double v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 113
    iget-object v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "url"

    iget-object v3, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageUri:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 122
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getViewTag()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/image/ImageLoadEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 123
    return-void

    .line 117
    :cond_4
    iget v1, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    if-ne v1, v3, :cond_3

    .line 118
    const-string v1, "error"

    iget-object v2, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mImageError:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCoalescingKey()S
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    int-to-short v0, v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/facebook/react/views/image/ImageLoadEvent;->mEventType:I

    invoke-static {v0}, Lcom/facebook/react/views/image/ImageLoadEvent;->eventNameForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
