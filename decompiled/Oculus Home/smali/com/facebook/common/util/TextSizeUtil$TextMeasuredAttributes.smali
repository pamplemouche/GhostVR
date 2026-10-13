.class public Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;
.super Ljava/lang/Object;
.source "TextSizeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/util/TextSizeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextMeasuredAttributes"
.end annotation


# instance fields
.field public lineCount:I

.field public textHeight:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "textHeight"    # I
    .param p2, "lineCount"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;->textHeight:I

    .line 20
    iput p2, p0, Lcom/facebook/common/util/TextSizeUtil$TextMeasuredAttributes;->lineCount:I

    .line 21
    return-void
.end method
