.class public Lcom/oculus/horizon/spherical/gl/IndexArray;
.super Ljava/lang/Object;
.source "IndexArray.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final indices:Ljava/nio/Buffer;

.field public final size:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    array-length v0, p1

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/gl/IndexArray;->indices:Ljava/nio/Buffer;

    .line 30
    array-length v0, p1

    iput v0, p0, Lcom/oculus/horizon/spherical/gl/IndexArray;->size:I

    .line 31
    return-void
.end method
