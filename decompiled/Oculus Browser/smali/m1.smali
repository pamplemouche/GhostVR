.class public Lm1;
.super LF1;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm1;->w:Landroid/view/View;

    invoke-direct {p0}, LF1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LE1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm1;->w:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, LY1;->a(Landroid/view/View;F)V

    .line 2
    invoke-virtual {p1, p0}, LE1;->b(LD1;)LE1;

    return-void
.end method
