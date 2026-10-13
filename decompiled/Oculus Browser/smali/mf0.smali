.class public Lmf0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmf0;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lmf0;->b:I

    .line 4
    iput p3, p0, Lmf0;->c:I

    return-void
.end method
