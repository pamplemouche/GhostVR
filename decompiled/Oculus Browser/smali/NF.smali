.class public final LNF;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCF;


# instance fields
.field public final A:Z

.field public final w:LWF;

.field public final x:I

.field public final y:LJG;

.field public final z:Z


# direct methods
.method public constructor <init>(LWF;ILJG;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LNF;->w:LWF;

    .line 3
    iput p2, p0, LNF;->x:I

    .line 4
    iput-object p3, p0, LNF;->y:LJG;

    .line 5
    iput-boolean p4, p0, LNF;->z:Z

    .line 6
    iput-boolean p5, p0, LNF;->A:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, LNF;

    .line 2
    iget v0, p0, LNF;->x:I

    iget p1, p1, LNF;->x:I

    sub-int/2addr v0, p1

    return v0
.end method
