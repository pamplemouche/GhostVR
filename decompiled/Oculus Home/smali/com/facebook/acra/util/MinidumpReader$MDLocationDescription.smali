.class Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;
.super Ljava/lang/Object;
.source "MinidumpReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/util/MinidumpReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDLocationDescription"
.end annotation


# instance fields
.field public pos:I

.field public size:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "size"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->pos:I

    .line 38
    iput p2, p0, Lcom/facebook/acra/util/MinidumpReader$MDLocationDescription;->size:I

    .line 39
    return-void
.end method
