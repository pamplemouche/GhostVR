.class public Lcom/google/flatbuffers/FlatBufferBuilder;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final utf8charset:Ljava/nio/charset/Charset;


# instance fields
.field bb:Ljava/nio/ByteBuffer;

.field force_defaults:Z

.field minalign:I

.field nested:Z

.field num_vtables:I

.field space:I

.field vector_num_elems:I

.field vtable:[I

.field vtable_in_use:I

.field vtables:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/flatbuffers/FlatBufferBuilder;->$assertionsDisabled:Z

    .line 33
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/flatbuffers/FlatBufferBuilder;->utf8charset:Ljava/nio/charset/Charset;

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->minalign:I

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable:[I

    .line 36
    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtable_in_use:I

    .line 37
    iput-boolean v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->nested:Z

    .line 39
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vtables:[I

    .line 40
    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->num_vtables:I

    .line 41
    iput v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->vector_num_elems:I

    .line 42
    iput-boolean v2, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->force_defaults:Z

    .line 50
    if-gtz p1, :cond_0

    move p1, v0

    .line 51
    :cond_0
    iput p1, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->space:I

    .line 52
    invoke-static {p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/flatbuffers/FlatBufferBuilder;->bb:Ljava/nio/ByteBuffer;

    .line 53
    return-void
.end method

.method static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    return-object v0
.end method
