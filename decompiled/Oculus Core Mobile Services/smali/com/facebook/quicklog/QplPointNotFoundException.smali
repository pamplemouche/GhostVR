.class public Lcom/facebook/quicklog/QplPointNotFoundException;
.super Ljava/lang/IllegalArgumentException;
.source "QplPointNotFoundException.java"


# instance fields
.field public final instanceKey:I

.field public final knownPoints:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final markerId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/facebook/quicklog/QplPointNotFoundException;->knownPoints:[Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/facebook/quicklog/QplPointNotFoundException;->markerId:I

    .line 26
    iput p4, p0, Lcom/facebook/quicklog/QplPointNotFoundException;->instanceKey:I

    .line 27
    return-void
.end method
