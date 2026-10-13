.class public LTb1;
.super Landroid/view/animation/Animation;
.source "PG"


# instance fields
.field public final synthetic w:LZb1;


# direct methods
.method public constructor <init>(LZb1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTb1;->w:LZb1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p2, p0, LTb1;->w:LZb1;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, LZb1;->b(LZb1;F)V

    return-void
.end method
