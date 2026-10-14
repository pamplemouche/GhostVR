.class final Lb/a/e/ah;
.super Ljava/lang/Object;


# instance fields
.field final a:[Lb/a/e/ah;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lb/a/e/ah;

    iput-object v0, p0, Lb/a/e/ah;->a:[Lb/a/e/ah;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/e/ah;->b:I

    iput v0, p0, Lb/a/e/ah;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/ah;->a:[Lb/a/e/ah;

    iput p1, p0, Lb/a/e/ah;->b:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    iput p1, p0, Lb/a/e/ah;->c:I

    return-void
.end method
