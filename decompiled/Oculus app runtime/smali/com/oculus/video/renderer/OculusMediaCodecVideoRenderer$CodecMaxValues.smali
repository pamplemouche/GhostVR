.class final Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "OculusMediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p1, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 226
    iput p2, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 227
    iput p3, p0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method
