.class public LJf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static A:Ljava/util/Comparator;


# instance fields
.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIf1;

    invoke-direct {v0}, LIf1;-><init>()V

    sput-object v0, LJf1;->A:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJf1;->w:Ljava/lang/String;

    .line 3
    iput p2, p0, LJf1;->x:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, LJf1;->y:I

    .line 5
    iput p3, p0, LJf1;->z:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, LJf1;

    .line 2
    iget-object v0, p0, LJf1;->w:Ljava/lang/String;

    iget-object p1, p1, LJf1;->w:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LJf1;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, LJf1;->w:Ljava/lang/String;

    check-cast p1, LJf1;

    iget-object p1, p1, LJf1;->w:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LJf1;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
