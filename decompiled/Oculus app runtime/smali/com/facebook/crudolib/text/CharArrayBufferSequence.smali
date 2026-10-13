.class public Lcom/facebook/crudolib/text/CharArrayBufferSequence;
.super Ljava/lang/Object;
.source "CharArrayBufferSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# instance fields
.field private final mBuffer:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>(Landroid/database/CharArrayBuffer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-gt p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    aget-char p1, v0, p1

    return p1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sizeCopied="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 26
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-gt p2, v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 29
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested index out of bounds start="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", end="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sizeCopied="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public length()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v2, p0, Lcom/facebook/crudolib/text/CharArrayBufferSequence;->mBuffer:Landroid/database/CharArrayBuffer;

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
