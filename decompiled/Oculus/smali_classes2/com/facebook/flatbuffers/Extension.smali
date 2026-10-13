.class public Lcom/facebook/flatbuffers/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field public final contentBuffer:Ljava/nio/ByteBuffer;

.field public final length:I

.field public final offset:I

.field public final origin:I

.field public final pivot:I


# direct methods
.method protected constructor <init>(IILjava/nio/ByteBuffer;II)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/facebook/flatbuffers/Extension;->origin:I

    .line 141
    iput p2, p0, Lcom/facebook/flatbuffers/Extension;->pivot:I

    .line 142
    iput-object p3, p0, Lcom/facebook/flatbuffers/Extension;->contentBuffer:Ljava/nio/ByteBuffer;

    .line 143
    iput p4, p0, Lcom/facebook/flatbuffers/Extension;->offset:I

    .line 144
    iput p5, p0, Lcom/facebook/flatbuffers/Extension;->length:I

    .line 145
    return-void
.end method

.method public static readFromBuffer(Ljava/nio/ByteBuffer;I)Lcom/facebook/flatbuffers/Extension;
    .locals 6

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 112
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 113
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 114
    add-int/lit8 v4, p1, 0xc

    .line 115
    new-instance v0, Lcom/facebook/flatbuffers/Extension;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/flatbuffers/Extension;-><init>(IILjava/nio/ByteBuffer;II)V

    return-object v0
.end method
