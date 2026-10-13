.class public Ln10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ld10;


# instance fields
.field public final synthetic a:Lq10;


# direct methods
.method public constructor <init>(Lq10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln10;->a:Lq10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/widget/TextView;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln10;->a:Lq10;

    .line 2
    iget-object v0, v0, Lq10;->K:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
