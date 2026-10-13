.class final Lcom/oculus/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
.super Lcom/oculus/android/exoplayer2/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/oculus/android/exoplayer2/util/ParsableByteArray;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/extractor/mp4/Atom;-><init>(I)V

    .line 172
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method
